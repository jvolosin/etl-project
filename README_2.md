<<<<<<< HEAD
# Happy Hour
## ETL Group Project

Members: Kasey Lacerda, Kinnari Patel, Jessi Volosin, Bill Roll, and Joe Atemkuh

Wine time! If you want to know all about wine, you've come to the right place! For our project we have gathered different data sources about wine that includes information like the vineyard it comes from, country, consumption, production, temperature and more!

![Title](Images/hh1.png)




## Assignment
This project will demonstrate the ability to gather data, manipulate it, and organize it in into a database. This project does **not** include any data analysis. The purpose of this project is to create a well ordered, useful database that could be utilized by an organization. Databases resulting from ETL are often the starting point for an organization's data analysis.

## Data Sources

In our first try, our goal was to scrape data temperatures from this site
URL: https://statpedia.com/stat/Average_Yearly_Temperature_by_Country/HJd7OcGK



![statpedia](https://github.com/jvolosin/etl-project/blob/data/Images/img_1.png) 

We had to use BeautifulSoup, splinter, and other dependencies to parse through the retrieve our specific data.


![Dependencies](https://github.com/jvolosin/etl-project/blob/data/Images/img_2.png)
Our next point of call is to identify the class handler to list the country and temperatures to determine its effects on wine production.

![Find.all query](https://github.com/jvolosin/etl-project/blob/data/Images/img_3.png)


We then print out the list of countries and their associated temperatures associated with it and export the data to HTML.

![List and HTML table export](https://github.com/jvolosin/etl-project/blob/data/Images/img_4.png)


We noticed that the scraped data was incomplete, and it did not scrape data from the page that was not scrolled. Our challenge was to get our dependencies to scroll the page and scrape the data
