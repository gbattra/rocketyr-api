MODELS

track: {
	id:
	title:
	author_id:
	runtime:
	share_count
	track_art_url:
	track_rank_id:
}

track_rank_id: {
	id:
	label:
	icon:
	descri
}

author_profile: {
	id:
	user: belongs_to
	tracks: has_many
	albums: has_many
	bio:
}

album: {
	id:
	author_profile_id:
	name:
	album_art_url:
	genre:
	color:
	tracks: has_many
}

genre: {
	id:
	label:
	icon:
}

location: {
	id:
	label:
}

user: {
	id:
	first_name:
	last_name:
	birthday:
	location_id:
	profile_img_url:
	author_profile_id:
	feeds: has_many
	playlists: has_many
}

feed: {
	id:
	user_id:
	feed_tracks: has_many
	liked_tracks:
	name:
	feed_filters:
	icon_id:
	color:
}

icon: {
	id:
	name:
	image_url:
}


playlist: {
	id:
	playlist_art_url:
	created_by_id:
	name:
	tracks: has_many
}

feed_track: {
	id:
	track_id:
	feed_id:
}

playlist_track: {
	id:
	track_id:
	playlist_id:
}

profile_track: {
	id:
	track_id:
	author_profile_id:
}

liked_track: {
	id:
	feed_id:
	track_id:
}

badge: {
	id:
	name:
	icon:
	label:
	value:
	description:
} // double check

feed_filter:
	id:
	label:
	value:
	options:
}
