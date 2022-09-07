CREATE TABLE review ( 
ide varchar(20), 
updated_at DATE,
created_at date,
user_id varchar(20),
place_id varchar(20),
text_ varchar(20)
);
CREATE TABLE usuario ( 
ide varchar(20), 
updated_at DATE,
created_at date,
email varchar(20),
password_ varchar(20),
firts_name varchar(20),
last_name varchar(20)
);
CREATE TABLE amenity ( 
ide varchar(20), 
updated_at DATE,
created_at date,
name_ varchar(20)
);
CREATE TABLE placeamenity ( 
ide varchar(20), 
place_id varchar(20)
);
CREATE TABLE states ( 
ide varchar(20), 
updated_at DATE,
created_at date,
name_ varchar(20)
);
CREATE TABLE city ( 
ide varchar(20), 
updated_at DATE,
created_at date,
state_id varchar(20),
name_ varchar(20)
);
CREATE TABLE place ( 
ide varchar(20), 
updated_at DATE,
created_at date,
user_id varchar(20),
name_ varchar(20),
city_id varchar(20),
description_ varchar(20),
number_rooms INTEGER,
number_bathrooms integer,
max_guest integer,
price_by_night integer,
latitude float,
longitued FLOAT
);

--OTORGANDO LLAVES PRIMARIAS
ALTER TABLE review ADD CONSTRAINT pk_review_Id PRIMARY KEY (ide);
ALTER TABLE usuario ADD CONSTRAINT pk_usuario_Id PRIMARY KEY (ide);
ALTER TABLE amenity ADD CONSTRAINT pk_amenity_Id PRIMARY KEY (ide);
ALTER TABLE states ADD CONSTRAINT pk_states_Id PRIMARY KEY (ide);
ALTER TABLE city ADD CONSTRAINT pk_city_Id PRIMARY KEY (ide);
ALTER TABLE place ADD CONSTRAINT pk_place_Id PRIMARY KEY (ide);

--OTORGANDO LLAVES FORANEAS

ALTER TABLE review
ADD FOREIGN KEY (user_id) REFERENCES usuario(ide);

ALTER TABLE review
ADD FOREIGN KEY (place_id) REFERENCES place(ide);

ALTER TABLE place
ADD FOREIGN KEY (user_id) REFERENCES usuario(ide);

ALTER TABLE placeamenity
ADD FOREIGN KEY (ide) REFERENCES amenity(ide);

ALTER TABLE placeamenity
ADD FOREIGN KEY (place_id) REFERENCES place(ide);

ALTER TABLE place
ADD FOREIGN KEY (city_id) REFERENCES city(ide);

ALTER TABLE city
ADD FOREIGN KEY (state_id) REFERENCES states(ide);


SELECT * FROM city;

