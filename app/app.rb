class SampleBlog < Padrino::Application
  configure do
    register SassInitializer # Remove if not using SASS

    ##
    # Application-specific configuration options
    # 
    register MailerInitializer if defined?(MailerInitializer) # Remove this if your not using mailer
    # set :raise_errors, true     # Show exceptions (default for development)
    # set :public, "foo/bar"      # Location for static assets (default root/public)
    # set :sessions, false        # Enabled by default
    # set :reload, false          # Reload application files (default in development)
    # set :default_builder, "foo" # Set a custom form builder (default 'StandardFormBuilder')
    # set :locale_path, "bar"     # Set path for I18n translations (default your_app/locales)
    # disable :padrino_helpers    # Disables padrino markup helpers (enabled by default if present)
    # disable :padrino_mailer     # Disables padrino mailer (enabled by default if present)
    # disable :flash              # Disables rack-flash (enabled by default)
    # enable  :authentication     # Enable padrino-admin authentication (disabled by default)
    # layout  :my_layout          # Layout can be in views/layouts/foo.ext or views/foo.ext (default :application)
    # 
  end

  ##
  # You can configure for a specified environment like:
  # 
  #   configure :development do
  #     set :foo, :bar
  #   end
  #

  ##
  # You can manage errors like:
  # 
  #   errors 404 do
  #     render 'errors/404'
  #   end
  #
  
  get "/" do
    "Hello World!"
  end
  
  get :about, :map => '/about_us' do
    render :haml, "%p This is a sample blog created to demonstrate the power of Padrino!"
  end

end