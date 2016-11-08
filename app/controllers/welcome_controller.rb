class WelcomeController < ApplicationController
  def index
    if (params.has_key?(:id) &&
      params.has_key?(:random))
      @id = params['id'].to_i
      @random = params['random']
    end
  end
  
  def test
    @controller_message = "Mesage From Controller"
    
  end
end
