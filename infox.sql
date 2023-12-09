-- a linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de dados
use dbinfox;
-- o bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key, 
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);
-- o comando abaixo descreve a tabela
describe tbusuarios;
-- a linha abaixo insere dados na tabela (CRUD)
-- create -> insert
insert into tbusuarios(iduser,usuario,fone,login,senha)
values (1,'jean terra','9999-9999','jeanterra','12345');
-- a linha abaixo exibe os dados da tabela (CRUD)
-- read -> select
select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values (2,'administrador','9999-9999','admin','admin');
insert into tbusuarios(iduser,usuario,fone,login,senha)
values (3,'teste','9999-9999','teste','12345');

-- a linha abaixo modifica dados na tabela (CRUD)
-- update 
update tbusuarios set fone='8888-8888' where iduser=2;

-- a linha abaixo apaga um registro da tabela (CRUD)
-- delete
delete from tbusuarios where iduser=3;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
);

select * from tbclientes;

insert into tbclientes(nomecli, endcli, fonecli, emailcli)
values ('gráfica império', 'rua D, 200', '5555-5555', 'grafica.imperio@gmail.com');

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
serviço varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);

insert into tbos (equipamento, defeito, servico, tecnico, valor,idcli)
values ('notebook', 'não liga', 'trocar fonte', 'edson',87.50,1);

select * from tbos;

-- o codigo abaixo traz informaçoes de duas tabelas
select 
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);
