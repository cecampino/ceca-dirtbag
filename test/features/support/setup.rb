require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'site_prism'
require 'selenium-webdriver'

World(Capybara::DSL)

Capybara.current_driver = :selenium
Capybara.default_wait_time = 30

Dir["#{File.dirname(__FILE__)}/../../object_maps/*.rb"].each {|obj_file| require obj_file}
