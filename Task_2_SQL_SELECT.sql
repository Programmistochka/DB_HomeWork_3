--SELECT �������
-- �������� � ��� ������ ��������, �������� � 2018 �
SELECT name, album_year 
FROM albums
where album_year = 2018;

--�������� � ����������������� ������ �������� �����
SELECT name, duration 
FROM tracks
ORDER BY duration DESC
LIMIT 1;

--�������� ������, ����������������� ������� �� ����� 3,5 ������
SELECT name 
FROM tracks
WHERE duration > '3:30';

--�������� ���������, �������� � 2018 �� 2020 ��
SELECT name, collect_year 
FROM collections
WHERE collect_year BETWEEN 2018 and 2020;

--�����������, ��� ��� ������� �� ������ �����
SELECT name 
FROM performers
WHERE name NOT LIKE '% %';

--�������� ������, ������� �������� ����� "���"/"my"
SELECT name 
FROM tracks
WHERE LOWER(name) LIKE '%my%' OR LOWER(name) LIKE '%���%';