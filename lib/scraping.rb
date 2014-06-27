require 'nokogiri'
require 'open-uri'
require 'pry'

class Scrape
	def initialize(argument)
		@html = open(argument)
		@buzzfeed = Nokogiri::HTML(@html)
		@title = self.scrape_title
		@description = self.scrape_description
		@link = self.scrape_link

	end

	# updated_post= {}
	def post_text
		title = @buzzfeed.css(".post article h2 a").first.text.strip
		description = @buzzfeed.css(".post article .description b").first.text.strip
		title + ": " + description
	end

	def post_link
		"http://buzzfeed.com#{@buzzfeed.css(".post article h2 a").first["href"]}"
	end

	def scrape_title
		@buzzfeed.css(".post article h2 a").first.text.strip
	end

	def scrape_description
		@buzzfeed.css(".post article .description b").first.text.strip
	end

	def scrape_link
		"http://buzzfeed.com#{@buzzfeed.css(".post article h2 a").first["href"]}"
	end

	# updated_post[:title]="/post/title"

	# updated_post[:articlelink]=

	def title
		@title
	end

	def description
		@description
	end

	def post_link
		@link
	end
	# binder.pry#Your object-oriented scraper goes here

	#timing and link
end
# argument= (http://buzzfeed.com/("a.href"))


