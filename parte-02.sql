insert into
	enderecos(rua, pais, cidade)
values
	('Avenida Higienópolis','Brasil','Londrina'),
	('Avenida Paulista', 'Brasil', 'São Paulo'),
	('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');
	

insert into 
	usuarios(nome, email, senha, endereco_id) 
values 
	('Cauan','cauan@exemple.com','1234', (select endereco_id from enderecos where rua like '%Paulista%' and cidade = 'São Paulo')),
	('Chrystian','chrystian@exemple.com','4321', (select endereco_id from enderecos where rua like '%Marcelino%' and cidade = 'Curitiba')),
	('Matheus','matheus@exemple.com','3214',(select endereco_id from enderecos where rua like '%Higienópolis%' and cidade = 'Londrina'));
	


insert into 
	redes_sociais(nome)
values
	('Youtube'),
	('Twitter'),
	('Instagram'),
	('Facebook'),
	('TikTok');


insert into 
	usuario_rede_sociais(usuario_id,rede_social_id)
values
	((select usuario_id from usuarios where nome = 'Cauan'), (select rede_social_id from redes_sociais where nome = 'Youtube')),
	((select usuario_id from usuarios where nome = 'Chrystian'), (select rede_social_id from redes_sociais where nome = 'Youtube')),
	((select usuario_id from usuarios where nome = 'Matheus'), (select rede_social_id from redes_sociais where nome = 'Youtube')),
	((select usuario_id from usuarios where nome = 'Chrystian'), (select rede_social_id from redes_sociais where nome = 'Twitter')),
	((select usuario_id from usuarios where nome = 'Cauan'), (select rede_social_id from redes_sociais where nome = 'Twitter')),
	((select usuario_id from usuarios where nome = 'Matheus'), (select rede_social_id from redes_sociais where nome = 'Instagram')),
	((select usuario_id from usuarios where nome = 'Matheus'), (select rede_social_id from redes_sociais where nome = 'Facebook')),
	((select usuario_id from usuarios where nome = 'Chrystian'), (select rede_social_id from redes_sociais where nome = 'Instagram')),
	((select usuario_id from usuarios where nome = 'Cauan'), (select rede_social_id from redes_sociais where nome = 'TikTok'));
