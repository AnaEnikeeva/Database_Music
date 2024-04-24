insert into musician (musician_name)
values ('B.B.King'),
       ('Antonio Vivaldi'),
       ('Dolly Parten'),
       ('Cascada'),
       ('Bob Dylan');
      
insert into music_genre (genre_name)
values ('blues'),
       ('classical'),
       ('country'),
       ('dance'),
       ('folk');
      
insert into music_album (album_name, year_of_release)
values ('Do not play that song', 1969),
       ('Vivaldi: The four Seasons', 1970),
       ('Jolene', 1973),
       ('Evacuate the Dancefloor', 2019),
       ('Blood on the tracks', 1974);
      
insert into music_track (track_name, duration, album_id)
values ('Ecstasy', 208 , 1),
       ('Allegro', 266 , 2),
       ('Jolene', 185 , 3),
       ('Evacuate the Dancfloor', 203 , 3),
       ('Forever Young', 143 , 4),
       ('My soul', 119 , 5);

insert into collection (collection_name, year_of_release)
values ('March', 1995),
       ('September', 1996),
       ('May', 1814),
       ('April', 2024);
       
insert into genre_musician (genre_id, musician_id)
values (1,2),
       (1,1),
       (2,3),
       (2,5),
       (3,5),
       (3,4),
       (4,2),
       (5,2);
      
insert into musician_album_musician (album_id, musician_id)
values (1,2),
       (1,5),
       (2,3),
       (2,4),
       (3,1),
       (3,3),
       (4,5),
       (5,3),
       (5,2);
      
 insert into collection_track (collection_id, track_id)
 values (1,3),
        (1,2),
        (1,6),
        (2,6),
        (2,4),
        (3,1),
        (3,5),
        (4,1),
        (4,2);
       
         