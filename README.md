# Fast Fashion ETL 

## Summary 
The following is an extension of my contribution to the project [Insights into Cross-Continental Fast Fashion](https://github.com/lijahoffman/fast_fashion). Specifically, it is a modification of the file Fashion_Lija_Update.ipynb found [here](https://github.com/lijahoffman/fast_fashion/blob/main/Fashion_Lija_Update.ipynb) (which retrieves, analyzes, and visualizes data from the RapidAPI ASOS API and the Kaggle Myntra CSV). 

The following analysis considered the number of inventory items in the Myntra CSV and the number of search results returned using the ASOS API. It highlights the ETL process by extracting data from API and CSV sources, transforming in Pandas, and loading into pgAdmin using PostgreSQL and SQLAlchemy.  

## Extract 
1. The [ASOS API](https://rapidapi.com/apidojo/api/asos2/) was used was used to query the v2/auto-complete endpoint, specifying the country, store, and search term.

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


## Analysis 
1. Analysis of the API search results compared to the merchandise inventory listed in the CSV. Specifically, the number of blue, pink, and green garments relative the neutrals black and white. 

2. A chi-squared significance test was used to compare the number of observed ASOS API results for each color to the expected number of results (MyIntra color proportions multiplied by the total number of ASOS items). 


## Conclusions
#### * Note: the following conclusions reflect the API results returned at the time of execution. 

According to the Myntra CSV, which was last updated at the beginning of 2022, the total number of clothing items of the specified colors (in descending order) were as follows: blue, black, green, white, pink. In contrast, the ASOS API, which was updated in the past month, produced the following ordering of the average number of search results for each color: pink, blue, green, white, black. The increased proportion of pink and green items in the ASOS dataset compared to the Myntra dataset appears to be in line with the colors forecasted to trend after the release of the Myntra dataset. Indeed, a chi-squared test comparing the actual number of ASOS search result for each color to the expected number of search results for each color (calculated by multiplying the color proportions of the Myntra dataset by the total number of ASOS search results), yielded a statistically significant p-value of 0.0. 

With respect to the distribution of “trend” color search results across countries, the analyses demonstrated variation in the overall popularity of certain colors, as well as popularity between countries. As previously mentioned, pink was found to have the greatest mean number of search results (2.21e 4), followed by blue (2.00e 4) and green (1.75e 4). While pink was popular across countries (var = 3.77e 7, SD = 6.14e 3), France returned the greatest number of results when entering pink into the search and Germany returned the least. Blue was found to have the greatest variation (6.87e 7) and standard deviation (8.29e 3) in search results, proving to be most popular in Italy and least popular in Spain. Green also displayed variation in the number of search results returned (var = 4.15e 7, SD = 6.44e 3), with the greatest number of results returned in the United States and the fewest number of results returned in Spain. 




## Tools Used 
• Jupyter Notebook
• Python
• Pandas
• SQL 
• PostgreSQL
• pgAdmin
• SQLAlchemy