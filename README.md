# Fast Fashion ETL 

## Summary 
The following is an extension of my contribution to the project [Insights into Cross-Continental Fast Fashion] (https://github.com/lijahoffman/fast_fashion). Specifically, it is a modification of the file Fashion_Lija_Update.ipynb found [here] (https://github.com/lijahoffman/fast_fashion/blob/main/Fashion_Lija_Update.ipynb) (which retrieves, analyzes, and visualizes data from the RapidAPI ASOS API and the Kaggle Myntra CSV). This project highlights the ETL process by extracting data from API and CSV sources, transforming in Pandas, and loading into pgAdmin using PostgreSQL and SQLAlchemy.  

## Extract 
1. The [ASOS API] (https://rapidapi.com/apidojo/api/asos2/) was used was used to query the v2/auto-complete endpoint, specifying the country, store, and search term.

2. The above query was completed for the colors pink, blue, green, black, and white (translated into each country's native language) across the United States, France, Spain, Germany, Italian, and Australia. 

3. The Myntra dataset was used to obtain information on the the products listed in the Indian retailer's catalog, including color. 



## Transform 
1. The results of the ASOS API queries were used to create a dataframe, indexed by color, where each column represented the search output for a given country. 
2. A second ASOS dataframe was created containing the proportion of search results by color for each country. 
3. The two ASOS dataframes were merged. 
4. A fourth ASOS dataframe was created containing the search results and proportions by color for all countries combined. 
5. The Myntra CSV file (Resources/myntra_products_catalog.csv) was read to a dataframe and cleaned. 
6. A new dataframe was created containing a the Myntra data, specifically the number of items in the Myntra catalog that were categorized as a color of interest. 
7. Another dataframe was created containing the information above, as well as the proportion of the catalog items by color. 



## Load 
1. Corresponding PostgreSQL tables created in pgAdmin.
2. Pandas dataframes of were connected to tables in using SQLAlchemy.




## Tools Used 
• Jupyter Notebook
• Python
• Pandas
• SQL 
• PostgreSQL
• pgAdmin
• SQLAlchemy