=begin
Project: Wikibot 
Version: v1.1
Author: Ammani nair
Date: 3/20/2017
=end

# Calling the databases and addon's required

require 'sinatra'
require 'json'
require 'sinatra/activerecord'
require 'rake'
require 'twilio-ruby'

set :database_file, "D:/drive/Wikibot/Code/config/database.yml"

# enable sessions for this project
enable :sessions

client = Twilio::REST::Client.new ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]
POS_RESPONSES  = ["true","okay", "ok","yes", "indeed", "yup","yeah", "ya", "correct", "sure"]
NEG_RESPONSES = ["no","false", "nope","wrong", "incorrect", "nada"]
POS_EXCLAMATIONS = ["Excellent", "Awesome", "Great", "Cool"]
GREETINGS = ["Hi","Yo", "Hey","Howdy", "Hello"]

get "/" do
end
