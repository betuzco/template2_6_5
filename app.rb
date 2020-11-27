require 'sinatra'
require './config'
require './lib/adivina-la-palabra'

get '/' do
    session[:advinador] = AdivinaLaPalabra.new
    session[:pais_oculto]= session[:advinador].ocultar_palabra('chile') 
    erb :index
end

post '/intentar' do
    if params[:letra] == "h"
        session[:pais_oculto]= "*h***"
    else
        session[:feedback] = "la letra #{params[:letra]} no esta en la palabra"
    end
    
    erb :index
end