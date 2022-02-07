-- select 1
select * from enderecos;
	

-- select 2
select 
	*
from 
	enderecos e
join 
	usuarios u
	on e.endereco_id = u.endereco_id 
order by e.endereco_id;

	
--select 3

select 
	rs.rede_social_id ,rs.nome, u.usuario_id, u.nome, email, senha, endereco_id  
from 
	redes_sociais rs 
join 
	usuario_rede_sociais urs 
	on urs.rede_social_id = rs.rede_social_id
join usuarios u 
	on u.usuario_id = urs.usuario_id ;
	
	
-- select 4
	
select 
	*
from 
	redes_sociais rs 
join 
	usuario_rede_sociais urs 
	on urs.rede_social_id = rs.rede_social_id
join 
	usuarios u 
	on u.usuario_id = urs.usuario_id 
join 
	enderecos e
	on e.endereco_id = u.endereco_id ;



-- select 5

select 
	rs.nome, u.nome, u.email, e.cidade 
from 
	redes_sociais rs 
join 
	usuario_rede_sociais urs 
	on urs.rede_social_id = rs.rede_social_id
join 
	usuarios u 
	on u.usuario_id = urs.usuario_id 
join 
	enderecos e
	on e.endereco_id = u.endereco_id ;



-- select 6

select 
	rs.nome, u.nome, u.email, e.cidade 
from 
	redes_sociais rs 
join 
	usuario_rede_sociais urs 
	on urs.rede_social_id = rs.rede_social_id
join 
	usuarios u 
	on u.usuario_id = urs.usuario_id 
join 
	enderecos e
	on e.endereco_id = u.endereco_id 
where rs.nome = 'Youtube';

-- select 7

select 
	rs.nome, u.nome, u.email, e.cidade 
from 
	redes_sociais rs 
join 
	usuario_rede_sociais urs 
	on urs.rede_social_id = rs.rede_social_id
join 
	usuarios u 
	on u.usuario_id = urs.usuario_id 
join 
	enderecos e
	on e.endereco_id = u.endereco_id 
where rs.nome = 'Instagram';

-- select 8

select 
	rs.nome, u.nome, u.email, e.cidade 
from 
	redes_sociais rs 
join 
	usuario_rede_sociais urs 
	on urs.rede_social_id = rs.rede_social_id
join 
	usuarios u 
	on u.usuario_id = urs.usuario_id 
join 
	enderecos e
	on e.endereco_id = u.endereco_id 
where rs.nome = 'Facebook';

-- select 9

select 
	rs.nome, u.nome, u.email, e.cidade 
from 
	redes_sociais rs 
join 
	usuario_rede_sociais urs 
	on urs.rede_social_id = rs.rede_social_id
join 
	usuarios u 
	on u.usuario_id = urs.usuario_id 
join 
	enderecos e
	on e.endereco_id = u.endereco_id 
where rs.nome = 'TikTok';

-- select 10 

select 
	rs.nome, u.nome, u.email, e.cidade 
from 
	redes_sociais rs 
join 
	usuario_rede_sociais urs 
	on urs.rede_social_id = rs.rede_social_id
join 
	usuarios u 
	on u.usuario_id = urs.usuario_id 
join 
	enderecos e
	on e.endereco_id = u.endereco_id 
where rs.nome = 'Twitter';
