require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    
    binding.pry 
  end 
end 

# doc.css(".post")

# Scraper.new.get_page
  
#   def print_courses
#     self.make_courses
#     Course.all.each do |course|
#       if course.title
#         puts "Title: #{course.title}"
#         puts "  Schedule: #{course.schedule}"
#         puts "  Description: #{course.description}"
#         #you will need to use pry so you find the right CSS selectors 
#     end
#   end
    
#   def get_courses
#     # puts doc.css("h2")
#   end 
  
#   def make_courses
#     #instantiating Course objects + giving each course the correct title, schedule, + description
#   end 
  
#   end
  
# end



