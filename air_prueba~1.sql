CREATE SYNONYM rev FOR airbnbp.review;
CREATE SYNONYM usu FOR airbnbp.usuario;
CREATE SYNONYM pla FOR airbnbp.place;
CREATE SYNONYM ame FOR airbnbp.amenity;
CREATE SYNONYM lug FOR airbnbp.placeamenity;
CREATE SYNONYM esta FOR airbnbp.states;
CREATE SYNONYM ciu FOR airbnbp.city; 
--vista

/* SYNONYM VIEWS */

CREATE OR REPLACE SYNONYM view_review_user_pla FOR airbnbp.view_review_user_place;
CREATE OR REPLACE SYNONYM view_place_city_sta FOR airbnbp.view_place_city_state;
CREATE OR REPLACE SYNONYM view_place_ame FOR airbnbp.view_place_amenity;