require 'nokogiri'
require 'pry'
require 'open-uri'
require_relative 'wikihow_tech_topic_model'



# test_array = [{'title' => 'how to text', 'content' => 'just do it'}], {'title' => 'how to email', 'content' => 'just do it, too'}]

class WikihowTechTopics::Scraper

    def initialize(student_hash)
        student_hash.each {|key, value| self.send("#{key}=", value)}
        @@all << self
      end
    
      def self.create_from_collection(students_array)
        students_array.each do |student_hash| 
          Student.new(student_hash)
        end
      end
    
      def add_student_attributes(attributes_hash)
        attributes_hash.each {|key, value| self.send("#{key}=", value)}
        @@all << self
      end
    
      def self.all
        @@all
    @title_ary = []

    def initialize(url = "https://www.wikihow.com/Category:Selecting-and-Buying-a-Computer")
        @url = url
    end

    def self.scraped_title_array
        
        @home_page = Nokogiri::HTML(open("https://www.wikihow.com/Category:Selecting-and-Buying-a-Computer"))
        
        @home_page.css('.text').each do |title|
            title.css('span').text

        @title_ary << title.css('span').text
        end
        @title_ary
    end

    def self.scraped_content_array(url)

        content_hash = {}

        # @content_url = content_url

        url = "https://www.wikihow.com/Category:Selecting-and-Buying-a-Computer"

        home_page = Nokogiri::HTML(open(url))

        # link = profile_page.css("div.social-icon-container").children.css("a").map { |sm| sm.attribute("href").text }
    
        content_urls = home_page.css(".thumbnail").children.css("a").map { |content_link| content_link.attribute("href").text }
        
        http_added = content_urls.map { |content_url| "https:" + content_url }
        # css('div.steps')
        http_added.map do |complete_content_url| 
            content_pages_to_scrape = Nokogiri::HTML(open(complete_content_url))
        
        final_scraped_content = content_pages_to_scrape.css('div.steps').map { |full_content|
                full_content.css("b").text }
        
        final_scraped_content.each do |steps|
            content_hash[:content] = steps
            end
        end
        content_hash
    end
end

#putting into hash

# 1. Get more than just first article to be viewable by user
# 2. Finish out model and cli files for content
# 3. Parse/code steps from content to be user friendly
# 4. Make sure whole CLI works

# Question: Why did a below not need an argument of url but the current way does? (is the differenc each and map)? And was using each the reason I only got one link and a time and not all of the links scraped?)

# home_page.css(".thumbnail").each do |content_url|
#     content_url.css("a").attribute("href").text

# scraped_content_ary = []

# scraped_content_url = content_url.css("a").attribute("href").text

# scraped_content_ary << "https:" + scraped_content_url

# scraped_content_ary.each do |complete_content_url|
#     content_page = Nokogiri::HTML(open(complete_content_url))

# content_page.css('div.steps').each do |full_content|
#     full_content.css("b").text
#     @content_array << full_content.css("b").text
#     binding.pry
