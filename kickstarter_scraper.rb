# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  #This just opens up a file and reds it into a local_variables
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  #added project variable
  project = kickstarter.css("li.project.grid_4").first
  binding.pry
  end
create_project_hash


#projects: kickstarter.css("li.project.grid_4")project
#title project.css("h2.bbcard_name strong a").text
#image link: project.css("div.project-thumbnail a img").attribute("src").value
