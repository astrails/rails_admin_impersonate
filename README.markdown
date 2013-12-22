## RailsAdminImpersonate

Add an ability to [rails_admin](https://github.com/sferik/rails_admin) to impersonate as any user or actually any member
that is devise authenticatable.

## Installation

Add to your Gemfile:

    gem 'rails_admin'
    gem 'rails_admin_impersonate'

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

You should see home icon and Impersonate link for every user action.

This project rocks and uses MIT-LICENSE.

#### Copyright

&copy; 2013 [Boris Nadion](mailto:boris@astrails.com)