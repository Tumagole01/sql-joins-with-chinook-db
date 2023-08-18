SELECT * 
from artists 
where Name 
like 's%'

select *
from albums
where ArtistId =150;

select count(*) from artists;

select *
from playlists;

select *
from genres;

select *
from playlists
where Name like '%s';

select * 
from artists
where Name = "Marvin Gaye";

select *
from albums
where ArtistId = 104;

select *
from artists
inner join albums on artists.ArtistId = albums.ArtistId
where Name = "Amy Winehouse";

select *
from artists
inner join albums on artists.ArtistId = albums.ArtistId
where artists.ArtistId = 252;

--Find the artists with the most genre
ind all the artists for a given Genre

SELECT count(DISTINCT artists.Name) FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
JOIN albums ON tracks.AlbumId = albums.AlbumId
JOIN artists ON artists.ArtistId = albums.ArtistId
WHERE genres.Name = "Rock"

SELECT COUNT(tracks.TrackId), playlists.Name
FROM playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
JOIN tracks ON playlist_track.TrackId = tracks.TrackId
GROUP BY playlists.Name
ORDER BY COUNT(tracks.trackId) DESC
LIMIT 1

SELECT COUNT(tracks.TrackId) AS songCount, playlists.Name
FROM playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
JOIN tracks ON playlist_track.TrackId = tracks.TrackId
GROUP BY playlists.Name
ORDER BY songCount
LIMIT 1


--Find all the albums for a given artist
select Name, AlbumId, Title
from artists
join albums on artists.ArtistId = albums.ArtistId
where artists.ArtistId = 17;
--where Name = "Amy Winehouse";

--Find all the songs for a given genre
select * from Genres
join tracks on genres.GenreId = tracks.GenreId
where genres.Name = "Blues";


--Find all the songs in the playlist by playlist name ...Address
select * from playlists

-- Find the total for a given invoice (will need a sum)

select *
from invoices
where invoices.invoiceID = 17;

-- Find the biggest/smallest
select InvoiceId, Min(Total) from invoices
select InvoiceId, Max(Total) from invoices

-- Find the artist with the most /least songs
select 
    --CountDISTINCT artist .Name
     artists.Name, count(*) as TrackCount
    from artists
    join albums on albums.ArtistId = artists.ArtistId
    join tracks on tracks.AlbumId = albums.AlbumId
    group by artists.Name
    order by TrackCount DESC
    Limit 5

-- 