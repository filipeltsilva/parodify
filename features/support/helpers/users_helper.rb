require 'httparty'

module UsersHelper
  def remove_user(email)
    HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}")
  end
end
