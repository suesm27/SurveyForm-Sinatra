require 'sinatra'
enable :sessions

get '/' do
  t = Time.now
  @time = t.strftime "%b %d, %Y %H:%M %p"
  erb :index
end

get '/hello' do
  if session[:number]
    session[:number] = 1
  else
    session[:number] += 1
  end
end

post '/posting_form' do
  @name = params[:name]
  @location = params[:location]
  @language = params[:language]
  @comment = params[:comment]
  erb :result
end