resource "spotify_playlist" "Tollywood" {
    name = "Tollywood"
    tracks = ["53U9SGBZng53hsthxE6cP7"]
  
}

data "spotify_search_track" "shreya_goshal" {
    artist = "shreya_goshal"
}

resource "spotify_playlist" "pal" {
    name = "shreya_goshal"
    tracks = [data.spotify_search_track.shreya_goshal.tracks[1].id , 
    data.spotify_search_track.shreya_goshal.tracks[2].id, 
    data.spotify_search_track.shreya_goshal.tracks[3].id ]
}
  

  
