module AuthenticationHelper
  extend ActiveSupport::Concern

  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |email, password|
      email == 'foo' && password == 'bar'
    end
  end
end