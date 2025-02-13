INSERT INTO music_garner (ganer_name)
VALUES
('Рэп'), 
('Поп'), 
('Рок'), 
('Панк');

INSERT INTO musicians (nickname)
VALUES
('Ramstein'), 
('Linkin Park'), 
('Король и шут'), 
('St1m'), 
('Мот');

INSERT INTO garner_musicians (musical_ganre_id, musician_id)
VALUES
(1, 4),
(2, 5),
(3, 1),
(4, 3),
(3, 2);

INSERT INTO albums (album_name, release_year)
VALUES
('Mutter', 2001),
('One More Light', 2017), 
('Камнем по голове', 1996), 
('Достучаться до небес', 2008), 
('Август навсегда', 2024);

INSERT INTO songs (song_name, duration, album_id)
VALUES
('Sonne', 253, 1), 
('My Invisible', 214, 2), 
('Смельчак и ветер', 184, 3), 
('Достучаться до небес', 212, 4), 
('Мой август это ты', 165, 5), 
('Mutter', 243, 1);

INSERT INTO albums_musicians (musician_id, album_id)
VALUES
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5);

INSERT INTO collection (collection_name, release_year)
VALUES
('Rammstein', 2019), 
('Шут', 2010), 
('Лучшее', 2020), 
('Русское', 2024);

INSERT INTO songscollections (collection_id, song_id)
VALUES
(1, 1), 
(2, 3), 
(3, 4), 
(4, 5);