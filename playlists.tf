resource "spotify_playlist" "Hollywood" {
    name = "Hollywood"
    tracks = ["16kiQQ4BoLHDyj5W2fkfNK"]
}

data "spotify_search_track" "eminem"{
    artist = "Eminen"
}
resource "spotify_playlist" "slimshady" {
    name = "slimshady"
    tracks = [data.spotify_search_track.eminem.tracks[0].id,
    data.spotify_search_track.eminem.tracks[1].id,
    data.spotify_search_track.eminem.tracks[2].id,
    data.spotify_search_track.eminem.tracks[3].id,
    ]
  
}