create table if not exists music_garner (
musical_ganre_id SERIAL primary key,
ganer_name VARCHAR(40) not null
);

create table if not exists musicians (
musician_id SERIAL primary key,
nickname VARCHAR(30) not null
);

create table if not exists Garner_Musicians (
musical_ganre_id INTEGER references music_garner(musical_ganre_id),
musician_id INTEGER references musicians(musician_id)
);

create table if not exists Albums (
album_id SERIAL primary key,
album_name VARCHAR(50) not null,
release_year VARCHAR(5)
);

create table if not exists Albums_Musicians (
musician_id INTEGER references MUSICIANS(musician_id),
album_id INTEGER references Albums(album_id)
);

create table if not exists Songs (
song_id SERIAL primary key,
song_name VARCHAR(30) not null,
duration integer,
album_id INTEGER references Albums(album_id)
);

create table if not exists Collection (
collection_id SERIAL primary key,
collection_name VARCHAR(30) not null,
release_year VARCHAR(5)
);

create table if not exists SongsCollections (
collection_id INTEGER references Collection (collection_id),
song_id INTEGER references Songs (song_id)
);