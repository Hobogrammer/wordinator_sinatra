require 'sinatra'
require 'json'

def palindrome? (word)
  word.reverse == word
end

def anagram? (word,word2)
  word = word.chars.sort
  word2 =  word2.chars.sort

  word.eql? word2
end

get '/palindrome/:word' do
  word = params[:word]
  {palindrome: palindrome?(word), word: word }.to_json
end

get '/anagram/:word/:word2' do
  word = params[:word]
  word2 = params[:word2]

  {anagram: anagram?(word,word2), word: word, word2: word2 }.to_json
end
