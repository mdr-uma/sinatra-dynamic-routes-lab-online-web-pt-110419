require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @revers_name = params[:name].reverse
    @revers_name
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    @num.to_s
    # binding.pry
    (Math.sqrt(@num)%1 == 0).to_s
  end
end
