class SecretController < ApplicationController
  http_basic_authenticate_with name: 'chanweiyan', password: 'password'
  
  def index
  end
end
