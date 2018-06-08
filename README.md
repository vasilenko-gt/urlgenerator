# README

<h3>Urlgenerator - an open-source for generate short URL</h3>


Requirements
* Ruby version: '2.5.1'
* Rails 5.2.0
* Git 2.17.0
* PG


<h4>Development</h4>

1. Install RubyGems dependencies
 bundle install
2. Drop and Create database, run migrations and tasks
 rake db:reload
 

<h4>Application applying</h4>

To get the short URL you need to register.

After sign up in next time you will be able to simply sign in.

After registration, you will redirect to the page "Welcome", where you can see the time now and suggestions go to the page "generating short URL"

On the URL generation page enter your URL
Also you can enter the desired short_URL

After clicking the button "generate", you will be redirected to the page where your see short URL

You can go to the page where show all your generated short_url

By clicking the button "share" you will be redirected to page, where you can send a short address to another user by email

<h4>Application background</h4>

- Has a registration system

- Checks the specified address for originality(u can look in the model)

- Has prescribed validates in the model

- Has a task for "create 10 test users"

- Has a test for send a message for the last registered user: "localhost:3000/rails/mailers/user_mailer/sample_mail_preview"