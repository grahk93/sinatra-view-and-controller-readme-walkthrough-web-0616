require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do #because were in post we got the result of reverse, params
    original_string = params["string"]
    @reversed_string = original_string.reverse #save it to an instance to pass
    erb :reversed
  end

  get '/friends' do
     @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
     erb :friends
  end

end