require 'sinatra'
require 'sinatra/reloader'
also_reload('lib/**/*.rb')
require './lib/anagram'

get('/') do
  @description = "This application will determine whether two words/phrases are anagrams."
  erb(:main)
end

get('/output') do
  word_one = params.fetch("word-one")
  word_two = params.fetch("word-two")
  @result = anagram(word_one, word_two)
  erb(:output)
end
