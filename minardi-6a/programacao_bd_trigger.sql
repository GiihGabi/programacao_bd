drop trigger if exists escola.trVerificaNotaIns;
DELIMITER //
CREATE TRIGGER escola.trVerificaNotaIns BEFORE insert ON escola.alunodisciplina
FOR EACH ROW
BEGIN
	if new.nota1<0 or new.nota2<0 then
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Valor de Nota Inválido'; 
	end if;	
	
END //
DELIMITER ;

