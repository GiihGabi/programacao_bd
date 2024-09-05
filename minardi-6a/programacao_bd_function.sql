drop function if exists escola.funRetMedia;
DELIMITER //
CREATE FUNCTION escola.funRetMedia(p_ra INT, p_disc INT)
RETURNS FLOAT READS SQL DATA
BEGIN
	DECLARE media FLOAT DEFAULT 0.0;
    select 
		(coalesce(nota1,0)+ coalesce(nota2,0))/2 into media 
    from 
		escola.alunodisciplina
    where 
		ra = p_ra and 
        disciplina = p_disc;
    return media;
END //
DELIMITER ;