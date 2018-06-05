require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end #get '/'

  post '/piglatinize' do
    @new_instance = PigLatinizer.new
    @user_text = @new_instance.user_text(params[:user_phrase])
    erb :pig_latinized
  end

end
