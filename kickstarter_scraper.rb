# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  #This just opens up a file and reds it into a local_variables
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
  end
create_project_hash


#projects: kickstarter.css("li.project.grid_4")project