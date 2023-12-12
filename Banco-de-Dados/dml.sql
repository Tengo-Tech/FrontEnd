
SELECT name,cpf FROM tb_person
SELECT email FROM tb_user
SELECT city FROM tb_occurence
SELECT * FROM tb_social_media
select count(*) from tb_word

SELECT tb_user.name, tb_banned.word_id
FROM tb_user
INNER JOIN tb_banned
ON tb_user.id=tb_banned.user_id

SELECT tb_word.word, tb_occurrence.word_id
FROM tb_word
INNER JOIN tb_occurrence
ON tb_word.id=tb_occurrence.word_id

SELECT tb_word.word, tb_occurrence.occurrence_date
FROM tb_word
INNER JOIN tb_occurrence
ON tb_word.id=tb_occurrence.word_id

SELECT tb_person.name, tb_user.email
FROM tb_person
INNER JOIN tb_user
ON tb_person.user_id=tb_user.id

SELECT tb_social_media.company, tb_occurrence.city
FROM tb_social_media
INNER JOIN tb_occurrence
ON tb_occurrence.media_id=tb_social_media.id

SELECT tb_word.word, tb_user.email, tb_banned.id
FROM tb_word
INNER JOIN tb_banned ON tb_user.id=tb_banned.user_id
INNER JOIN tb_user ON 
tb_user.id=tb_user.word_id