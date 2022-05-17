# A few notes on how to get around this app

To start up the app on the local server: `bin/rails server`. Note that you have to manually reload the browser to see your changes.

Note that translations have not been set up for blog posts.

- The blog page ("FROM THE VINE") is located under `views/articles/index.html.erb`
- The RESERVATIONS page is located under `app/views/contacts/new.html.erb`
- Partials for items like headers and footers are under `app/views/shared`
- Translations are located under `app/config/locals`

## User access

The users of this site are intended only to be administrators--people who can add blog posts, etc. For admin login and password, see the `.env` file.

- To access the Sign In or Sign Up pages, enter `localhost:3000/users/sign_in` and `localhost:3000/users/sign_up` respectively
- Type `bin/rails console` to access the database, in order to directly add, delete, or edit files, such as users.
- **WARNING** Deleting a user will delete all associated blog posts as well! -**NOTE** French translations will not appear when logged in

# Helpful methods and modifying the database via irb

You can access your database directly through irb on the console. `bin/rails console` will open irb. Use `reload!` to reload the console after making any changes to model files

- `all` method returns an array of all records in a table. Ex.: `User.all`
- `new` method creates an record instance. Ex.: `u = User.new` will create a new user, but not save it to the database
- Add attributes to new User: `u = User.new(name: "John")`
- `create` method creates and saves a new record to the database. Ex.: `u = User.create` will actually add a new record
- `valid?` checks for validations. Note that a record with no validations (Ex.: `u.valid?` for the above example returns `true` because it has not validation criteria assigned to it).
- `destroy` destroys the record. Ex. : `u = User.last` sets variable to last record in Users. `u.destroy` will destroy that last record.
- 'recordName.errors.full_messages` show full description of any errors.
- `save` method saves a new instance to the database. Ex.: `u.save`
- `update` updates the value of an existing record. Ex.: `Article.last.update(user_id: 1)` will update the last Article record `user_id`
