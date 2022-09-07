--Crear vistas para poder consultar:

-- Las Review que realiza un usuario sobre un Place
select * from SYS.review,SYS.place,SYS.usuario 
WHERE SYS.usuario.ide = SYS.review.user_id 
AND  SYS.place.ide = SYS.review.place_id;

--Los Place que hay en una City y un State
select * from SYS.place, SYS.city,SYS.states
where Sys.place.ide =  SYS.city.ide
and Sys.place.ide = SYS.states.ide;

-- Averiguar los Place x Amenity o Ameniy x Place
SELECT SYS.PLACE.*
FROM SYS.PLACE, SYS.AMENITY, SYS.PLACEAMENITY
WHERE SYS.PLACE.ide = SYS.PLACEAMENITY.PLACE_ID AND
SYS.AMENITY.ide = SYS.PLACEAMENITY.IDE; 


