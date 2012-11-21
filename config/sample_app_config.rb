require 'sinatra/base'
require 'mongoid'

class SampleAppConfig < Sinatra::Base

  configure :development do
    enable :sessions, :logging, :static, :inline_templates, :method_override, :dump_errors, :run
    Mongoid.load!(File.expand_path(File.join("config", "mongoid.yml")))
  end

  configure :test do
    enable :sessions, :static, :inline_templates, :method_override, :raise_errors
    disable :run, :dump_errors, :logging
    Mongoid.load!(File.expand_path(File.join("config", "mongoid.yml")))
  end

  configure :production do
    enable :sessions, :logging, :static, :inline_templates, :method_override, :dump_errors, :run
    Mongoid.load!(File.expand_path(File.join("config", "mongoid.yml")))
  end
end