drop table if exists books;
create table books (
  id integer primary key,
  bookname text,
  author text,
  publisher text,
  points integer
);

insert into books (bookname, author, publisher, points) values ('蜘蛛の糸', '芥川龍之介', '旺文社', 5);
insert into books (bookname, author, publisher, points) values ('rabbit,run', 'john updike', 'modern classics', 5);
insert into books (bookname, author, publisher, points) values ('kumonoito', 'akutagawa', 'oubunnsya', 5);


