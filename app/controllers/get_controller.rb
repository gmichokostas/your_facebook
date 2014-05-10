class GetController < ApplicationController
  
  #$ACCESS_TOKEN = params[:query]
  #$access_token = 'CAACEdEose0cBANfZBgeDE26ZCZBRZCJZBdlB6MqZBPHC9Wk0y2LZCB7dyYAvzTaOeFg6qimB0syiFn2gaCSIX1JaXV52wAwprZCKuZB5oqDDSexqUQ83SLDGODOFLodwBGKgsxcxiKJ62XKkL6GHheXR3F6SEK6HKbbNqAfqC4swPVWPDCDMZCNlWGcxS8vWaTddMZD'
  
  def friends
  	@graph = Koala::Facebook::API.new(@@ACCESS_TOKEN)
  	friends_array = @graph.get_connections("me", "friends")
  	@friends = friends_array.map {|x|  x["name"]}
  	#@friends = (friends_array.map { |x| x["name"] }).join(" \n")
  end
  def groups
  	@graph = Koala::Facebook::API.new(params[:query])
  	groups_array = @graph.get_connections("me", "groups")
  	@groups = groups_array.map { |x| x["name"] }
  end
  def photos
  	@graph = Koala::Facebook::API.new(params[:query])
  	photos_array = @graph.get_connections("me", "photos")
  	@photos = photos_array.map { |x| x["source"] }
  end
end
