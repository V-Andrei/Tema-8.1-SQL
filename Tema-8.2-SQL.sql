create table Author
(
	AuthorId int Primary Key,
	FirstName varchar(25),
	LastName varchar(25),
	BirthDate date
)
insert into dbo.Author
	([AuthorId],[FirstName],[LastName],[BirthDate])
	values(1,'George','Gigel','1986-11-09');
insert into dbo.Author
	([AuthorId],[FirstName],[LastName],[BirthDate])
	values(2,'Marian','Mirel','1980-07-24');
insert into dbo.Author
	([AuthorId],[FirstName],[LastName],[BirthDate])
	values(3,'Serban','Serbanescu','1975-02-03');
insert into dbo.Author
	([AuthorId],[FirstName],[LastName],[BirthDate])
	values(4,'Mihai','Mangan','1996-07-14');

delete from Author
where BirthDate between '1975-01-01' and '1975-12-31';

create table Book
(
	Title varchar(50) Primary Key,
	PublisherName varchar (25),
	Year int,
	Price money,
	AuthorId int Foreign key (AuthorId) references Author(AuthorId)
)

insert into dbo.Book
	([Title],[PublisherName],[Year],[Price],[AuthorId])
	values('Book 1', 'Nemira', 2010, 200, 1);
insert into dbo.Book
	([Title],[PublisherName],[Year],[Price],[AuthorId])
	values('Book 2', 'Armanda', 1470, 150, 2);
insert into dbo.Book
	([Title],[PublisherName],[Year],[Price],[AuthorId])
	values('Book 3', 'Humanitas', 1998, 50, 4);

delete from Book
where Price < 150;
