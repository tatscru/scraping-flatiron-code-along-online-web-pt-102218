require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    
  # doc.css(".post").each do |post| 
  #  
  #   binding.pry 
    # end 
  end 



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
    
  def get_courses
    self.get_page.css(".post")
    #operated on the HTML page.. so you should refer to .get_page
    # puts doc aka [.get_page].css("")
  end 
  
  def make_courses
    self.get_courses.each do |post|
      course = Course.new 
    course.title = post.css("h2").text
    course.schedule = post.css(".date").text 
    course.description = post.css("p").text 
     
    
    #instantiating Course objects + giving each course the correct title, schedule, + description
  end 
  
end



