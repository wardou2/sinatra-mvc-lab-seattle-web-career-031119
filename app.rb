require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_input = params[:user_phrase]
    @piglatinized = PigLatinizer.new
    @piglatinized.piglatinize(@user_input)
  end
end
