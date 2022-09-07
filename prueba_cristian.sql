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