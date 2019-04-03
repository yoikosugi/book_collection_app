drop table if exists books;
create table books (
  id integer primary key,
  bookname text,
  author text,
  publisher text,
  points integer
);
