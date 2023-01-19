--SELECT запросы
-- Название и год выхода альбомов, вышедших в 2018 г
SELECT name, album_year 
FROM albums
WHERE album_year = 2018;

--Название и продолжительность самого длинного трека
SELECT name, duration 
FROM tracks
ORDER BY duration DESC
LIMIT 1;

--Названия треков, продолжительность которых не менее 3,5 минуты
SELECT name 
FROM tracks
WHERE duration > '3:30';

--Названия сборников, вышедших с 2018 по 2020 гг
SELECT name, collect_year 
FROM collections
WHERE collect_year BETWEEN 2018 AND 2020;

--Исполнители, чье имя состоит из одного слова
SELECT name 
FROM performers
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово "мой"/"my"
SELECT name 
FROM tracks
WHERE LOWER(name) LIKE '%my%' OR LOWER(name) LIKE '%мой%';
