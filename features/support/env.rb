require "capybara"
require "capybara/cucumber"

require_relative "helpers/users_helper"

# O objeto World carrega um módulo e seus métodos para que a execução seja reconhecida pelo Ruby
World(UsersHelper)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
end
