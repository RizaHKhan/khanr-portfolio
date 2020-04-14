# README


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
