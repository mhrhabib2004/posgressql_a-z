-- Active: 1743639780257@@127.0.0.1@5432@ph
CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) not NULL
)


CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    titel TEXT not NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2
);

DROP TABLE "user";
DROP TABLE post;

ALTER TABLE post
ALTER COLUMN user_id set not null

 INSERT INTO "user"(username) VALUES
 ('akhas'),('bathas'),('pahar'),('nodi');
 

 INSERT INTO post (titel,user_id) VALUES 
 ('akhas onek sundhor ja ami kokon o deki ni agey',2),
 ('batash a onno rokom santi pawa jay ja onno kutaw pawa jabey na ', 1),
 ('arey nodi tho panir jonno bikkato ja majey mac ash korey onek rokom',4),
 ('paha aktha boro matir stup ja dektey valoi lagey jabow ak din',4)

 SELECT * FROM "user"

 SELECT * FROM post

 -- Insertion constraint on INSERT post
-- Attempting to insert a post with a user ID that does not exist
-- Inserting a post with a valid user ID
-- Attempting to insert a post without specifying a user ID
 
 INSERT INTO post (titel,user_id) VALUES ('test',NULL)


 -- Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT

DELETE FROM "user"

WHERE id = 4