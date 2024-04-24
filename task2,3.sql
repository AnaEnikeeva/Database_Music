
SELECT track_name, duration
FROM music_track
WHERE duration = (select MAX(duration) from music_track);

SELECT track_name
FROM music_track
WHERE duration >= 210;

SELECT collection_name
FROM collection
WHERE year_of_release between 2018 and 2020;

SELECT musician_name
FROM musician 
WHERE musician_name not like '% %';

SELECT track_name
FROM music_track
WHERE track_name like '%my' or track_name like '%мой%';

select g.genre_name, count(gm.musician_id) from genre g
join genre_musician gm on g.genre_id = gm.genre_id
group by g.genre_name;

select a.album_name, a.year_of_release, count(t.track_id) from track t
join album a on t.album_id = a.album_id
where year_of_release between 2019 and 2020;

select a.album_name, avg(t.duration) from track t
join album a on t.album_id = a.album_id
group by t.album_id;

select m.musician_name from musician m
join album_musician am on m.musician_id = am.musician_id
join album a on am.album_id = a.album_id
where year_of_release != 2020;

select c.collection_name, m.musician_name from musician m
join album_musician am on m.musician_id = am.musician_id
join album a on am.album_id = a.album_id
join track t on a.album_id = t.track_id
join collection_track ct on t.track_id = ct.track_id
join collection c on t.collection_id = c.collection_id
where musician_name = 'Bob Dylan';
