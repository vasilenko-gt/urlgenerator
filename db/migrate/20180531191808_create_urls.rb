class CreateUrls < ActiveRecord::Migration[5.2]

  def change
    create_table :urls do |t|
      t.string :original_url
      t.string :short_url
      t.string :unique_url

      t.timestamps
    end
  end

end