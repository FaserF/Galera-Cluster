CREATE EVENT myevent
    ON SCHEDULE EVERY 5 SECOND
    DO
      CALL insertbigdb();

CREATE PROCEDURE insertbigdb
BEGIN 

	USE BigDB;
	LOAD DATA LOCAL INFILE '/etc/mysql/Galera-Cluster/BigDBBeruf.txt' INTO TABLE Beruf LINES TERMINATED BY '\r\n';
	LOAD DATA LOCAL INFILE '/etc/mysql/Galera-Cluster/BigDBWohnort.txt' INTO TABLE Wohnort LINES TERMINATED BY '\r\n';

END 

GO