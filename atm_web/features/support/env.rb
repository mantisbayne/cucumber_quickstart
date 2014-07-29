require 'minitest/unit'
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'atm')
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'bank_app')
require 'capybara/cucumber'


Capybara.app = Sinatra::Application
Sinatra::Application.set :environment, :test

#require 'simplecov'
#SimpleCov.start
