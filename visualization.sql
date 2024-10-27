Loading a CSV file called sales_data.csv into a table. 

CREATE TABLE sales_data (
    Order_ID INT,
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID INT,
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code VARCHAR(10),
    Region VARCHAR(50),
    Product_ID INT,
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(100),
    Sales DECIMAL(10, 2)
);

BULK INSERT sales_data
FROM 'C:\Users\suren\OLD-REPOSITORY( files)\Downloads\Visual-Studio_Codes\codes\PYTHON-practice\task 1'
WITH (
    FIELDTERMINATOR = ',',  -- Specify the delimiter (comma in this case)
    ROWTERMINATOR = '\n',   -- Specify the end-of-row character
    FIRSTROW = 2,           -- Skip the header row if needed
    ERRORFILE = 'C:\Users\suren\OLD-REPOSITORY( files)\Downloads\Visual-Studio_Codes\codes\PYTHON-practice\task 1' -- Optional: for capturing errors
);
GO
______________________________________________________________________________________________________________

1. BAR CHART: Compare total sales for each product.

SELECT 
    Category, 
    SUM(Sales) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    Category
ORDER BY 
    Total_Sales DESC;

This query will return the total sales for each product, which is suitable for a bar chart.
______________________________________________________________________________________________________________

2. PIE CHART: Show the percentage share of sales for each product category.

SELECT 
    Region, 
    SUM(Sales) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    Region;

This query gives the total sales and the percentage share for each product category, suitable for a pie chart.
______________________________________________________________________________________________________________

3. LINE CHART: Show sales trends over time.

SELECT 
    Order_Date, 
    SUM(Sales) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    Order_Date
ORDER BY 
    Order_Date;

This query returns the total sales amount for each date, ideal for plotting sales trends in a line chart.
______________________________________________________________________________________________________________

4. DOT PLOT: Show the quantity sold for each product.

SELECT 
    Customer_Name, 
    SUM(Sales) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    Customer_Name
ORDER BY 
    Total_Sales DESC;

This simple query fetches the product and the quantity sold, suitable for a dot plot.
______________________________________________________________________________________________________________

5. BOX PLOT: Show the distribution of sales amounts by region.

SELECT 
    Segment, 
    Sales
FROM 
    sales_data;

This query returns sales amounts by region, which can be used to generate a box plot to show the spread and distribution.
______________________________________________________________________________________________________________

6. SCATTER PLOT Show the relationship between customer age and sales amount.

SELECT 
    Ship_Date, 
    Sales
FROM 
    sales_data;

This query is perfect for plotting a scatter plot to examine any relationship between customer age and sales amount.
______________________________________________________________________________________________________________

7. HISTOGRAM: Show the distribution of sales amounts.

SELECT 
    FLOOR(Sales) AS Sales_Range, 
    COUNT(*) AS Frequency
FROM 
    sales_data
GROUP BY 
    FLOOR(Sales)
ORDER BY 
    Sales_Range;

This query will return the sales amounts, allowing you to group the data into bins for a histogram showing the frequency distribution.
______________________________________________________________________________________________________________

8. SPARKLINE: Show the sales trend for each product.

SELECT 
    Product_Name, 
    Order_Date, 
    SUM(Sales) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    Product_Name, 
    Order_Date
ORDER BY 
    Product_Name, 
    Order_Date;

This query will return a dataset in which you will get multiple rows with Order_Date and corresponding total_sales for each Product_Name. 
Using visualization tools, you can then plot this data as a sparkline by assigning the Order_Date to the X-axis and total_sales to the Y-axis.
______________________________________________________________________________________________________________

9. DATA MAP: Show total sales by region.

SELECT 
    Country, 
    SUM(Sales) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    Country;

This query fetches the total sales for each region, which can be plotted on a geographical data map.
______________________________________________________________________________________________________________

10. HEAT MAP: Show sales amount by product and region.

SELECT 
    Region, 
    Category, 
    SUM(Sales) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    Region, 
    Category
ORDER BY 
    Region, 
    Category;

This query returns the sales amount grouped by product and region, ideal for creating a heatmap to show which products perform best in each region.
______________________________________________________________________________________________________________
       
SUMMARY:
Each SQL query above is designed to extract data that can be visualized using the corresponding chart or plot type.
You can run these queries in your SQL environment to fetch the data and 
then use visualization tools like Tableau, Power BI, or even Python libraries (like Matplotlib or Seaborn) to create the visual representations.
