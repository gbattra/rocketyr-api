MODELS

track: {
	id:
	title:
	author_id:
	runtime:
	share_count
	track_art_url:
	rank_id:
}

author_profile: {
	id:
	user: belongs_to
	profile_tracks: has_many
	albums: has_many
}

user: {
	id:
	first_name:
	last_name:
	birthday:
	location_id:
	profile_img_url:
	bio:
	author_profile_id:
	feeds:
	playlists:
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
	tracks:
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
