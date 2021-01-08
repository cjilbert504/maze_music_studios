# Maze Music Studios Management System (This project is being re-written)

The Maze is a music rehearsal facility in New Orleans, LA. It exists to provide a safe and welcoming environment to nurture the and grow the local music scene in New Orleans and surrounding areas. The facility consistes of twenty four rehearsal rooms of various sizes and monthly rental fees. 

### About this project
#### Maze Music Studios is a facility and tenant management system which: (These are long term goals)
- provides admins with a portal for tracking monthly rehearsal room payments
- allows admins to generate reports on tenant history (payments, current tenants, waiting list, etc.)
- allows tenants and admins to request repair/service tickets per needs of tenant rooms and facility as a whole
- allows tenants to make monthly payments via the tenant portal
- notifies tenants when payments are late

### Running the app
- Use `git@github.com:cjilbert504/maze_music_studios.git` to clone the repo to your local machine.
- `cd maze_music_studios/`
- Run `bundle install`  to install all the Ruby dependencies.
- Run `bin/rails db:setup`

#### Running the test suite
- The test suite can be run using the `bundle exec rspec` command