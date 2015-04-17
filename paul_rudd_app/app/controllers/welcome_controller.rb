require "httparty"

class WelcomeController < ApplicationController

  def index

  random = rand(500).to_i

  secret_key = ENV['secret_key']

  @response =  HTTParty.get("http://api.giphy.com/v1/gifs/search?q=paul+rudd&api_key=#{secret_key}&limit=500").parsed_response["data"][random]["images"]["original"]["url"]


  end

end
