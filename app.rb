require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    puts params
    
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Create a new route for /goobye/:name that returens "Goodbye, (person's name)"
  get '/goodbye/:name' do
    puts params
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end
  
  # Code your final two routes here:

end
