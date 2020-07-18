require './environment'
require_relative 'app/models/pirate'
require_relative 'app/models/ship'

module FormsLab
  class App < Sinatra::Base
     get '/' do 
       erb :"pirates/index"
     end
     
     get '/new' do 
       erb :"pirates/new"
     end 
     
     post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |properties|
        Ship.new(properties)
      end
      @ships = Ship.all
      erb :"pirates/show"
    end
     
     

  end
end
