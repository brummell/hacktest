hackerati
=========

For initial project

For running the console app (whose two classes dber and monitor are in /src/java) there are dependencies:
mysql/jdbc library and the sigar library, both of which are included in the Pulse jar in the same location. 

The database entry is premised on the existence of a database with the name "hackerati" with -u "sqluser" and -p "password". 

With a clean installation of grails, simply enter the outermost folder and run "grails run-app", all JS dependencies should be included.
