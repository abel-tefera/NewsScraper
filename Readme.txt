The program feteches the latest amharic news from ethiopianreporter.com and bbc amharic

The files found in /app are the main front-end components, which were made 
using custom PHP MVC framework. These components fetch news data from the database
and update the UI

The files found in /public contain assets for the UI. The UI was built using Mobrise
Website builder

The folder /scraper contains the web scraper which was implemented using 
HtmlAgilityPack, in c#. 

The scraper scrapes news from the websites, makes news objects and inserts
those objects into the database

The entries are read from the front-end and used to update the UI

Make sure to import the sql file inside /resources and update the database parameters found in
/app/config/config.php file