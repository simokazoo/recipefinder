

class Recipe
 include HTTParty
 ENV["FOOD2FORK_KEY"] = 'd938661a53966dbde85ef0fd5ef26d96'
 base_uri ENV['FOOD2FORK_SERVER_AND_PORT'] || 'http://food2fork.com/api'
 default_params key: ENV["FOOD2FORK_KEY"]
 format :json
 
 def self.for term
 get("/search", query: { q: term})["recipes"]
 end
end

#class Recipe < ActiveRecord::Base
 # include HTTParty

  #key_value = ENV['FOOD2FORK_KEY']
  #hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  #base_uri "http://#{hostport}/api/search"
  #default_params key: key_value
  #format :json

  #def self.for term
   # get("", query: { q: term})['recipes']
  #end
#end