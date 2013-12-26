require "rails_admin_impersonate/version"

module RailsAdmin
  module Config
    module Actions
      class Impersonate < RailsAdmin::Config::Actions::Base
        register_instance_option :visible? do
          authorized? && bindings[:object].respond_to?(:devise_modules)
        end

        register_instance_option :member? do
          true
        end

        register_instance_option :pjax? do
          false
        end

        register_instance_option :http_methods do
          [:get]
        end

        register_instance_option :link_icon do
          'icon-home'
        end

        register_instance_option :controller do
          Proc.new do
            sign_in @object
            redirect_to "/"
          end
        end

        RailsAdmin::Config::Actions.register(self)
      end
    end
  end
end

I18n.load_path += Dir.glob(File.expand_path("../../config/locales/*.{rb,yml}", __FILE__))
