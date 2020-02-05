require "gifs_diana/version"
require "httparty"

module GifsDiana
  class Error < StandardError; end
  #makes consuming restful web services dead easy.
  include HTTParty

  base_uri "animatedgif.me"
  
  #finding by id
  def self.find_by_id(id)
	  get("/gifs/#{id}.json").parsed_response["url"]
  end

  #finding by tag
  def self.find_by_tag(tag)
	  get("/#{tag}.json").parsed_response["url"]
  end

  #find a random kitty
  def self.random(tag)
	  find_by_tag(tag)
  end
  
end
