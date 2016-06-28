require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    #accepts name and renders it backwards
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    #accepts a number and returns square root
    @num = params[:number].to_i
    "#{@num *  @num}" 
  end

  get '/say/:number/:phrase' do
    #accepts number an phrase and returns the phrase in a string the number of times given
    @num = params[:number].to_i
    @phrase = params[:phrase]

    @num.times.collect do 
      "#{@phrase}\n"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #accepts 5 words and returns a string formatted as a sentence
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    #accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided.
    @operator = params[:operation].to_i
    @num1 = params[:number1]
    @num2 = params[:number2]

    case operation
    when @operator == add
      "#{@num1 +  @num2}" 
    when @operator == subtract
      "#{@num -  @num}" 
    when @operator == multiply
      "#{@num *  @num}" 
    when @operator == divide
      "#{@num /  @num}" 
    else
      "Incorrect parameter"
    end
  end
  

end
