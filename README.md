# Erstellung eines Galera Cluster unter MariaDB
## Dieses Repository ist für mein Abschlussprojekt "Datenübertragungsanalyse eines Datenbankclusters auf drei virtualisierten Hardware Knoten mit Vergleichsausblick"
## von Fabian Seitz
## Beschreibung

Eine vollständige Anleitung und beschreibung befindet sich in meiner Projektdokumentation

## Wie nutze ich die Dateien auf einem Knotenpunkt?

### Konfigurationsdateien

#### Hinweise:
$Node=Knotenzahl (z.B. 1)
/home/galera sollte mit /home/username oder ~/ ersetzt werden

#### Befehle
- apt-get install git
- cd /home/galera/
- git clone https://github.com/FaserF/Galera-Cluster.git
- cp /home/galera/Galera-Cluster/mysql.cnf /etc/mysql/conf.d/
- cp /home/galera/Galera-Cluster/galera-$Node.cnf /etc/mysql/conf.d/

#### Cluster starten
Alle MySQL Knoten sollten nun gestoppt sein!
service mysql stop

Zum starten des ersten Knoten folgenden Befehl verwenden:
service mysql start --wsrep-new-cluster

Alle weiteren Knoten werden durch folgenden Befehl gestartet
service mysql start

### Beispiel Datenbanken für Syncronistationstests

-> folgt noch

## Probleme / Q&A

Bei Problemen oder Fragen helfe ich gerne, dazu bitte einfach ein Problem unter https://github.com/FaserF/Galera-Cluster/issues/new eröffnen.

## Quellen
Meine Konfigurationsfiles basieren auf folgenden:
- https://developer.epages.com/blog/tech-stories/how-to-install-your-own-galera-cluster/