require 'nokogiri'
require_relative './scraping.rb'
require 'open-uri'
require 'mailgun'
require 'rake'


class Email

	Mailgun.configure do |config|
		config.api_key = "key-5i66wvmyrqf522kvqwrs245hf4vr8v34"
		config.domain = "sandbox73556029f036414e836768aa29e0ecf6.mailgun.org"
	end
	@mailgun = Mailgun(:api_key => 'key-5i66wvmyrqf522kvqwrs245hf4vr8v34')

	def send_email(recipient)

		buzz = Scrape.new('http://buzzfeed.com/lol')
		parameters = {
			:to =>"email_address",
			:subject =>"New LOL Buzzfeed Article",
			:text =>"Hi, here is the newest article from the lol tag on buzzfeed #{buzz.post_text} #{buzz.post_link}",
			:from =>'postmaster@sandbox73556029f036414e836768aa29e0ecf6.mailgun.org'
			}
		parameters[:to] =recipient
		
		@mailgun = Mailgun()

		@mailgun.messages.send_email(parameters)
	end
end
# q