require 'sinatra/base'
require 'mongoid'

class SampleAppConfig < Sinatra::Base

  configure :development, :test do
    enable :sessions, :logging, :static, :inline_templates, :method_override, :dump_errors, :run
    set :app_file, File.join('./application.rb')
    set :views, settings.root + '/views'
    Mongoid.load!(File.expand_path(File.join("config", "mongoid.yml")))
  end

  configure :production do
    enable :sessions, :logging, :static, :inline_templates, :method_override, :dump_errors, :run
    Mongoid.load!(File.expand_path(File.join("config", "mongoid.yml")))
  end
end