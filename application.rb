$:.unshift File.join(__FILE__, "../config")

require 'sinatra/base'
# require 'sinatra/contrib'
require 'mongoid'
require 'pry'
require 'sample_app_config'
require 'routes'

class SampleApp < Sinatra::Base

  run! if app_file == $0
end