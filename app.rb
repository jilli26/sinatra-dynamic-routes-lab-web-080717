require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reversed = params[:name]
    "#{@reversed.reverse}"
  end

  get '/square/:number' do
    @squared = (params[:number].to_i ** 2)
    return "#{@squared.to_s}"
  end

  get '/say/:number/:phrase' do
    final = ''
    params[:number].to_i.times do
      final += params[:phrase]
    end
    final
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      final = params[:number1].to_i + params[:number2].to_i
      final.to_s
    elsif params[:operation] == "subtract"
      final = params[:number1].to_i - params[:number2].to_i
      final.to_s
    elsif params[:operation] == "multiply"
      final = params[:number1].to_i * params[:number2].to_i
      final.to_s
    elsif params[:operation] == "divide"
      final = params[:number1].to_i / params[:number2].to_i
      final.to_s
    end
  end

end
