CREATE EVENT testinsert
    ON SCHEDULE EVERY 5 SECOND
    DO
      CALL insertbigdb();

CREATE PROCEDURE insertbigdb
BEGIN 

	USE BigDB;
	LOAD DATA LOCAL INFILE '/etc/mysql/Galera-Cluster/TestDBBeruf.txt' INTO TABLE Beruf LINES TERMINATED BY '\r\n';

END 
GO