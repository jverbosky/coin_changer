require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem
require_relative 'coin_changer.rb'

get '/' do
  erb :get_amount
end

post '/your_change' do
  amount = params[:amount].to_i
  change = make_change(amount)
  erb :results, locals: {change: change, amount: amount}
end