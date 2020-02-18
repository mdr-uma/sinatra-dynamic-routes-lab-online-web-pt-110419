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
  end

  get '/say/:number/:phrase' do
    str = ''
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times{str += "#{@phrase}\n"}
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    case @operation
        when "subtract"
          (@num1 - @num2).to_s
        when "add"
          (@num1 + @num2).to_s
        when "multiply"
          (@num1 * @num2).to_s
        when "divide"
          (@num1 / @num2).to_s
    end
end
