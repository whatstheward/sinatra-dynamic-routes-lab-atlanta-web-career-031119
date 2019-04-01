require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
   params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number]
    erb :square_number
  end

  get '/say/:number/:phrase' do
    answer = ''
    
    params[:number].to_i.times do
    answer += params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]  
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    
    erb :say_words
  end

  get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      @number1 = params[:number1]
      @number2 = params[:number2]
      erb :operation
  end
end