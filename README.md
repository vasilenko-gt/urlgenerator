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

After registration, you will be sent to the page of the "Welcome", where you can see the time and suggestions go to the page to generate the address

On the URL generation page enter your address
Also you can enter the desired address

After clicking the generation button you will be redirected to the page where your see 
short URL

You can go to the page where all your generated addresses will be before

By clicking the button 'share' you will be redirected to page, where you can send a short address to another user by mail


<h4>Application background</h4>

- Has a registration system

- Checks the specified address for originality(u can look in the model)

- Has prescribed validates in the model

- Has a task for "create 10 test users"

- Has a test for send a message for the last registered user : "https://immense-mountain-33372.herokuapp.com/rails/mailers/user_mailer/sample_mail_preview"