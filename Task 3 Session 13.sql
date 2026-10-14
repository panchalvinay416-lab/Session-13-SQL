CREATE TABLE playlistss ( 
    song_id int primary key,
	user_id int,
    duration_sec decimal(10,2)
);

insert into  playlistss (song_id,user_id,duration_sec)
values
(1, 101, 210),
(2, 102, 185),
(3, 103, 240),
(4, 101, 195),
(5, 104, 220),
(6, 102, 200),
(7, 105, 175),
(8, 103, 260),
(9, 104, 230),
(10, 105, 205);

select * from playlistss;

SELECT 
   song_id,
   user_id,
   duration_sec,
sum(duration_sec) over(partition by user_id)
as total_duration_song
from playlistss;