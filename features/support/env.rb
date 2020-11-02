require "allure-cucumber"
require "capybara"
require "capybara/cucumber"

require_relative "helpers/users_helper"

# O objeto World carrega um módulo e seus métodos para que a execução seja reconhecida pelo Ruby
World(UsersHelper)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 1
  config.app_host = 'http://parodify.qaninja.com.br'
end

AllureCucumber.configure do |config|
  config.results_directory = '/logs'
  config.clean_results_directory = true
end
