create database DevOpsCG 
create table Questions
(
ID int Identity(1,1),
[Desc] varchar(1000),
PreID int,
PageNo varchar(100)
)

insert into Questions
([Desc],PageNo)
values
('.Net','Page1'),
('Java','Page2');

select * from Questions


insert into Questions
([Desc],PreID,PageNo)
values
('On-Premise',1,'Page3'),
('Cloud',1,'Page3'),
('AWS',4,'Page4'),
('Azure',4,'Page4'),
('On-Premise',2,'Page5'),
('Cloud',2,'Page5'),
('AWS',8,'Page6'),
('Azure',8,'Page6');


create procedure sp_devops
 (@id int) 
AS
BEGIN
select [Desc] from Questions
where ID = @id
END
