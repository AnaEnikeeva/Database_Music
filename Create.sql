create table if not exists genre (
	genre_id SERIAL primary key,
	genre_name VARCHAR(40) not null
);

create table if not exists musician (
	musician_id SERIAL primary key,
	musician_name VARCHAR(216) not NULL
);

create table if not exists music_album (
	album_id SERIAL primary key,
	album_name VARCHAR(100) not null,
	year_of_release INTEGER CHECK (year_of_release >= 1900 AND year_of_release <= 2100)
);

create table if not exists music_track (
	track_id SERIAL primary key,
	track_name VARCHAR(40) not null,
	duration integer CHECK (duration > 0),
	album_name INTEGER references music_album (album_id)
);

create table if not exists collection (
	collection_id SERIAL primary key,
	collection_name VARCHAR(40) not null,
	year_of_release INTEGER CHECK (year_of_release >= 1900 AND year_of_release <= 2100)
);
	
create table if not exists genre_musician (
	genre_id INTEGER references music_genre(genre_id),
	musician_id INTEGER references musician(musician_id),
	constraint pk primary key (genre_id, musician_id)
);

create table if not exists music_album_musician (
	album_id INTEGER references music_album(album_id),
	musician_id INTEGER references musician(musician_id),
	constraint pk primary key (album_id, musician_id)
);

create table if not exists collection_track (
	collection_id INTEGER references collection(collection_id),
	track_id INTEGER references music_track(track_id),
	constraint pk primary key (collection_id, track_id)
);
	