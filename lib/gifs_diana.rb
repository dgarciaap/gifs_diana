require "gifs_diana/version"
require "httparty"

module GifsDiana
  class Error < StandardError; end
  #makes consuming restful web services dead easy.
  include HTTParty

  base_uri "animatedgif.me"


  def self.generate_txt(petition)
	  begin
		file = File.new("gifs_urls", "w")
		file.puts petition
		puts "Txt generated :)"
		puts "Route = #{file.path}"
		file.close
	  rescue Exception, "No jaló"
	  end
  end
  
  #finding by id
  def self.find_by_id(id)
	  gifs_urls = get("/gifs/#{id}.json").parsed_response["url"]
	  self.generate_txt(gifs_urls)
  end

  #finding by tag
  def self.find_by_tag(tag)
	  gifs_urls = get("/#{tag}.json").parsed_response["url"]
	  generate_txt(gifs_urls)
  end

  #find a random kitty
  def self.random(tag)
	  gifs_url = find_by_tag(tag)
	  generate_txt(gifs_url)
  end

end
