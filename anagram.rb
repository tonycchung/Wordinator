require 'sinatra'
require 'json'

get '/:word1/:word2' do
  content_type :json

  word1 = params[:word1]
  word2 = params[:word2]

  def_anagram = word1.to_s.chars.sort == word2.to_s.chars.sort
  def_palindrome = word1.to_s.reverse == word2

  {First_Word: word1, Second_Word: word2, Anagram?: def_anagram, Palindrome?: def_palindrome}.to_json
end
