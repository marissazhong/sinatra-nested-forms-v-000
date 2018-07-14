require_relative 'config/environment'

class FormsLab::App < Sinatra::Base

  get '/' do
    erb :new
  end

  post '/pirates' do
  @pirate = Pirate.new

  params[:student][:courses].each do |details|
    Course.new(details)
  end

  @courses = Course.all

  erb :student

end
