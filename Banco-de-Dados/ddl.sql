create table tb_user(
 id GENERATED ALWAYS AS IDENTITY
 email VARCHAR(255) not null,
 password VARCHAR(255) not null,
 created_at TIMESTAMP,
 primary key(id),
 unique(email),
 person_id BIGINT,
constraint fk_person foreign key(person_id)  references tb_person(id)

);

create table tb_person(

INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(255) not null,
sur_name VARCHAR(255),
cpf VARCHAR(255) not null,
avatar_url VARCHAR(255),
primary key(id),
unique(cpf)

);

create table tb_banned(
id INT GENERATED ALWAYS AS IDENTITY,
user_id BIGINT,
word_id BIGINT,
primary key(id),

constraint fk_user foreign key(user_id) references tb_user(id),
constraint fk_word foreign key(word_id) references tb_word(id)
);

create table tb_word(

id INT GENERATED ALWAYS AS IDENTITY,
word VARCHAR(255),
primary key(id)

);

create table tb_occurence(
INT GENERATED ALWAYS AS IDENTITY,
city VARCHAR(255),
ocurrence_date TIMESTAMP,
word_id BIGINT,
media_id BIGINT,
primary key(id),

constraint fk_occurrence foreign key(word_id) references tb_word(id),
constraint fk_media foreign key (media_id) references tb_social_media(id)
);

create table tb_social_media(
id INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(255) not null,
company VARCHAR(255),

primary key(id)
);
