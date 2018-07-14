require_relative 'config/environment'

class FormsLab::App < Sinatra::Base

  get '/' do
    erb :new
  end

  post '/pirates' do
    @pirate = Pirate.new(params[:pirate])

    params[:pirate][:ships].each do |ship|
      Ship.new(ship)
    end

    @ships = Ship.all
    erb :show
  end

end
