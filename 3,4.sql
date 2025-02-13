--Задание 2

select song_name, duration
from songs
where duration = (select max(duration) from songs);

select song_name, duration
from songs
where duration >= 210;

select collection_name, release_year  
from collection
where release_year between 2018 and 2021;

select nickname 
from musicians
where nickname not like '% %';

select song_name 
from songs
where lower(song_name) like 'мой %' or lower(song_name) like '% мой' or lower(song_name) like '% мой %' or lower(song_name) like 'мой' 
or lower(song_name) like 'my %' or lower(song_name) like '% my' or lower(song_name) like '% my %' or lower(song_name) like 'my';


--Задание 3

select ganer_name, count (nickname) from musicians m  
join garner_musicians gm   on m.musician_id  = gm.musician_id  
join music_garner mg  on gm.musical_ganre_id  = mg.musical_ganre_id  
group by mg.musical_ganre_id ;

select count(song_name) from songs s  
join albums a on a.album_id = s.album_id  
where a.release_year  between 2019 and 2021;

select album_name, AVG(duration) from songs s  
join albums a on a.album_id = s.song_id  
group by a.album_name;

select nickname  from musicians m  
where nickname  not in (
select nickname  from albums a 
join albums_musicians am  on a.album_id = am.album_id  
join musicians m  on am.musician_id = m.musician_id 
where a.release_year = 2020);

select collection_name from collection c  
join songscollections sc on c.collection_id  = sc.collection_id  
join songs s on sc.song_id  =   s.song_id 
join albums a on s.album_id  = a.album_id 
join albums_musicians am  on a.album_id = am.album_id  
join musicians m  on am.musician_id  = m.musician_id  
where m.nickname  like 'Ramstein';