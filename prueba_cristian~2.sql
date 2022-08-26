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

