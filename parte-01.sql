create table if not exists enderecos(
	endereco_id		SERIAL			PRIMARY KEY,
	rua				VARCHAR			NOT null,
	pais 			VARCHAR(100) 	not null,
	cidade			VARCHAR(100)	not null 
	
);



create table if not exists usuarios(
	usuario_id			SERIAL 		primary key,
	nome 				VARCHAR(100),
	email				VARCHAR 	not null 	unique,
	senha 				VARCHAR 	not null,
	endereco_id 		INTEGER 	not null, 
	
	foreign key (endereco_id) references enderecos(endereco_id)

);



create table if not exists redes_sociais(
rede_social_id		SERIAL 			primary key,
nome 				VARCHAR(150) 	not null unique
);



create table if not exists usuario_rede_sociais(
id 				SERIAL 		primary key,
usuario_id		INTEGER 	not null,
rede_social_id 	INTEGER 	not null,

foreign key (usuario_id) references usuarios(usuario_id),
foreign key (rede_social_id) references redes_sociais(rede_social_id)
);