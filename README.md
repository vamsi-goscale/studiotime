# Studiotime

## Setting Up for Development

1. Configure the Ruby version in `.ruby-version`. I've used 2.5.1 while developing.

2. In a terminal window, go to the project root folder. Make sure the correct
   Ruby and gemset are being used.

   Then, do:

       $ gem install bundler
       $ bundle install

1. The default setup uses sqlite database which is shipped by default by rails. To run migrations and feed the seed data:

       $ rake db:migrate
       $ rake db:seed

    Optionally, you could do

       $ rake db:setup

      to achieve the same in a single command

   `/db/seeds.rb` contains the seed data( studio types ) that is inserted into the database at 
   this time.
