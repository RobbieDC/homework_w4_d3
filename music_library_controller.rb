require( "sinatra" )
require( "sinatra/contrib/all" )
require( "pry-byebug" )

require_relative( "./models/artist" )
require_relative( "./models/album" )

# Artist Routes

get "/artists" do
  @artists = Artist.all()
  erb( :"artists/index" )
end

get "/artists/new" do
  erb( :"artists/new" )
end

post "/artists" do
  @artist = Artist.new( params )
  @artist.save()
  erb( :"artists/create" )
end

get "/artists/:id" do
  @artist = Artist.find( params[:id] )
  erb( :"artists/show" )
end

get "/artists/:id/edit" do
  @artist = Artist.find( params[:id] )
  erb( :"artists/edit" )
end

# Album Routes

get "/albums" do
  @albums = Album.all()
  erb( :"albums/index")
end

get "/albums/new" do
  @artists = Artist.all()
  erb( :"albums/new" )
end

post "/albums" do
  @album = Album.new( params )
  @album.save()
  erb(:"albums/create")
end

get "/albums/:id" do
  @album = Album.find( params[:id] )
  erb( :"albums/show" )
end