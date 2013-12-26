# RailsAdminImpersonate

Add an ability to [rails_admin](https://github.com/sferik/rails_admin) to impersonate as any user or actually any member
that is devise authenticatable.

## Installation

Add this line to your application's Gemfile:

    gem 'rails_admin_impersonate'

And then execute:

    $ bundle

## Usage

Add to your `config/initializers/rails_admin.rb` an action `impersonate` to actions:

    config.actions do
      # root actions
      dashboard                     # mandatory
      # collection actions
      index                         # mandatory
      new
      export
      history_index
      bulk_delete
      # member actions
      show
      edit
      delete
      history_show
      show_in_app
      impersonate
    end

Now restart the application and visit User table in the admin.

You should see home icon and Impersonate link for every model that uses Devise.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

&copy; 2013 [Boris Nadion](mailto:boris@astrails.com)
