require 'nokogiri'
require './lib/messaging.rb'
require './lib/scraping.rb'
require 'open-uri'
require 'mailgun'
#Your rake task goes here

task :email do
	scraper = Scrape.new('http://buzzfeed.com/lol')

	email = Email.new
	email.send_email(ENV[EMAIL_ADDRESS])
end