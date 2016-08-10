require_relative( './models/album' )
require_relative( './models/artist' )

require( 'pry-byebug' )

artist_1 = Artist.new( { 'name' => 'Shpongle' } )#.save();
artist_2 = Artist.new( { 'name' => 'Vibrasphere' } )#.save();
artist_1.save();
artist_2.save();

album_1a = Album.new( { 'name' => 'Tales from Outer Shpongolia', 'artist_id' => artist_1.id } )
album_1b = Album.new( { 'name' => 'Nothing Lasts but Nothing is Lost', 'artist_id' => artist_1.id } )
album_2a = Album.new( { 'name' => 'Archipelago', 'artist_id' => artist_2.id } )
album_2b = Album.new( { 'name' => 'Exploring the Tributaries', 'artist_id' => artist_2.id } )
album_1a.save()
album_1b.save()
album_2a.save()
album_2b.save()



binding.pry
nil
