namespace :db do

  desc 'Force remove all pg sessions'
  task destroy_pg_sessions: :environment do
    ActiveRecord::Base.connection.execute <<-eos
      SELECT
        pg_terminate_backend(pid)
      FROM
        pg_stat_activity
      WHERE
        -- don't kill my own connection!
        pid <> pg_backend_pid()
        -- don't kill the connections to other databases
      AND
        datname = '#{ActiveRecord::Base.connection.current_database}'
      ;
    eos
  end

  desc 'Reload DB'
  task reload: :environment do
    Rake::Task['tmp:clear'].execute
    Rake::Task['log:clear'].execute
    Rake::Task['tmp:create'].execute
    Rake::Task['db:destroy_pg_sessions'].execute
    Rake::Task['db:drop'].execute
    Rake::Task['db:create'].execute
    Rake::Task['db:migrate'].execute
    Rake::Task['db:seed'].execute

    Rake::Task['users:create'].execute
  end

end