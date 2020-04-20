# README
Take small manageable steps.
**If you understand how dataflow works, you understand Rails applications**

### Rails installation string
`rails new NAMEOFAPP -T --database=postgresql`

The `-T` removes the test environment
`--database` allows you to specify the database that should be used. There are many options however, Postgres is recommended by the instructor.

### Database Setup
Ruby will read the name of the system (in my case `khanr`). If you want something different, specify the `username` and `password` in the `database.yml` file.

Create the database user if none already exists: `sudo -u postgres createdb USERNAME`

Create the databse
    `rails db:create`
    `rails db:migrate`


Starting the database server
`sudo service postgresql start`

### Routes
`rake routes` To see all routes
`rake routes | grep NAME` To see specific routes

#### Routing Engine

The heart and sole of Rails.

### Scaffolding
`rails g scaffold Blog title:string body:text`
`rails db:migrate`

**Never change the `schema.rb` file**

### Rails Console
`rails c` allows you to access the database in the terminal

Example:
`Skill.create!(title: 'Ruby On Rails', percent_utilized: 50)`

Creates a new Skill directly in the database.

## Generators

### Controller
`rails g controller Pages home about contact`
Here, we have added controllers and views for the three pages specied above. The information stored in these pages will not be stored in a database and is used primarily for showing static information.

You will also notice rails did not create CRUD endpoints for these pages.

### Model
`rails g model Skill title:string percent_utilized:integer`

1. Creates a model file
2. No view files
3. A migration file with new table

Don't forget to `rails db:migrate` to implement the new changes into the schema file.

### Resource
`rails g resource Portfolio title:string subtitle:string`

Creates a model and controller but no views

Think of them as _very skinny scaffolds_.

## Seed File
**Only run this in development**. It ereases the database.
`rails db:setup`

The seed file utilizes pure Ruby and some Rails syntax to add fake data to the database.

## FriendlyID Gem
https://github.com/norman/friendly_id

Adding/Removing or Changing attributes from a database table:

`rails g migration add_slug_to_blogs slug:string:uniq`

1. The `add_` is unique and rails looks for these words
2. The `_blogs` refers to the schema table

## Updating Schema Tables

## Data Relationships

Create a relationship with something like this:
`rails g migration add_topic_reference_to_blogs topic:references`

## Data Defaults

## Data Concerns


## Devise Gem For Autentication

## The Single Responsibility Rule
A class should have a single responsibility.

## Virtual Attributes
Virtual attributes are values held in memory and not persisted to the database. But these attributes are based on user inputs.

## Sessions
!Important, sessions are not secure and no important data should be stored in them