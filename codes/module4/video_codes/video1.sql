/* SELECT command */
select * from Album;

/*SELECT only specific column */

select AlbumId, Title from Album;

/*Using LIMIT */

select * from Album limit 5;

/* using DISTINCT */
select DISTINCT(ArtistId) from Album;

/* using count */
select count(Distinct(ArtistId)) from Album;

/* using count to find number of rows in table */
select count(*) from album;

/* using table.col name syntax */
select Album.Title from Album
limit 5;
