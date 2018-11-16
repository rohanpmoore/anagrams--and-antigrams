require 'sinatra'
require 'sinatra/reloader'

get('/') do
  @description = "This application will determine whether two words/phrases are anagrams."
  erb(:main)
end
