class GetController < ApplicationController

  #$access_token = 'CAACEdEose0cBAFyPxvB0JVrGdPeWp8lZABcOod7qtNCkrCzjZBU7vKIAjcyzYPdxLxlb5z7UtAFS6ZAyEOZBMGRvlr0uM1HBSHPBox4I3P6xJZBsq8c2ZCDkRXjkwtTKCmEgkK8dYt8zAIfg1ZBFOKGQpSCmcZBUZBYPgHcCBhmOHCIE9ZAseQR0ukZBPNPfhKWXdQZD'
  $acceess_token = :access_token
  def friends
  	@graph = Koala::Facebook::API.new(params[:access_token])
  	friends_array = @graph.get_connections("me", "friends")
  	@friends = friends_array.map {|x|  x["name"]}
  	#@friends = (friends_array.map { |x| x["name"] }).join(" \n")
  end
  def groups
  	@graph = Koala::Facebook::API.new(params[:access_token])
  	groups_array = @graph.get_connections("me", "groups")
  	@groups = groups_array.map { |x| x["name"] }
  end
  def photos
  	@graph = Koala::Facebook::API.new(params[:access_token])
  	photos_array = @graph.get_connections("me", "photos")
  	@photos = photos_array.map { |x| x["source"] }
  end
end
