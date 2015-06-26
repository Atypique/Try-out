# Try-out

### "" are to be removed when inserting in console

# To generate scaffold

rails generate scaffold "name of the list"

# to generate devise

rails generate devise "name" (User ....)

# roll back

rails destroy devise "name"

# to change a migration ex

rails generate migration AddNameToUsers name:string

# to modify db from the console

app $ rails console
Name.delete_all

# on heroku

$ heroku run rails console

#rollback on db

rake db:rollback STEP=n

rake db:migrate:down VERSION=20080906120000

rails destroy model Tag

# Link db together

rails generate migration AddXxxxId(or else)ToXxx Xxx_id (or else): value (string ....)
