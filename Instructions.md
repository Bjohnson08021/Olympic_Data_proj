## Instructions

#### System Requirements:

* PostGres
* Chrome and ChromeDriverManager
* Python Dependencies:
  * Numpy
  * Pandas
  * Splinter
  * Beautiful Soup
  * Jupyter Notebook



#### Running Jupyter Notebooks

1. In your terminal, activate virtual environment and open Jupyter Notebook.
2. Under the Notebooks folder, run all of the Jupyter Notebook files.
3. Each notebook will extract files from the Data_Sets folder and create an output file in the Outputs folder.  These files will be loaded into Postgres.



#### PostGres:

1. Create database named **Olympics**
2. Creating Tables
   1. Run queries in the *[schema.sql](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/schema.sql)* file to create tables.  Tables must be created in the following order:
      1. HostCity
      2. Events
      3. Countries
      4. Medals
      5. EventWinners
      6. MultiWinningAthletes
3. Importing files into tables.
   1. Use the csv files in the Output folder to import into tables.
   2. For each file being imported, make sure to mark that it has a header and the delimiter is a comma ( , ).
   3. Files must be imported in the following order.
      1. Import ***Host_City.csv*** to ***HostCity*** table.
      2. Import ***Events.csv*** to ***Events*** table.
      3. Import ***Countries.csv*** to ***Countries*** table.
      4. Import ***Medal_Winners.csv*** to ***Medals*** table.
      5. Import ***Event_Winners.csv*** to ***EventWinners*** table.
      6. Import ***Multi_Winning_Athletes.csv*** to ***MultiWinningAthletes*** table.
4. Your database has been created.  You can now run queries.  See *[sample_queries.sql](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/sample_queries.sql)* file for some sample queries to run.

