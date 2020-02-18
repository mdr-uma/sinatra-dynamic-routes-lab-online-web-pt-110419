require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @revers_name = params[:name].reverse
    @revers_name
  end

  get '/square/:number' do
    @squared_num = params[:num].to_i **2
    @squared_num
  end
end
