require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @revers_name = params[:name].reverse
    @revers_name
  end

  get '/square/:number' do
    @num = params[:num].to_i ** 2
    @num.to_s
    # (Math.sqrt(@num)%1 == 0).to_s
  end
end
