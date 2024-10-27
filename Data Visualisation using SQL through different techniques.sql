1. BAR CHART: Compare total sales for each product.

SELECT product, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY product
ORDER BY total_sales DESC;

This query will return the total sales for each product, which is suitable for a bar chart.
______________________________________________________________________________________________________________

2. PIE CHART: Show the percentage share of sales for each product category.

SELECT category, 
       SUM(sales_amount) AS total_sales, 
       (SUM(sales_amount) * 100.0 / SUM(SUM(sales_amount)) OVER ()) AS percentage_share
FROM sales_data
GROUP BY category;

This query gives the total sales and the percentage share for each product category, suitable for a pie chart.
______________________________________________________________________________________________________________

3. LINE CHART: Show sales trends over time.

SELECT sales_date, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY sales_date
ORDER BY sales_date;

This query returns the total sales amount for each date, ideal for plotting sales trends in a line chart.
______________________________________________________________________________________________________________

4. DOT PLOT: Show the quantity sold for each product.

SELECT product, quantity_sold
FROM sales_data;

This simple query fetches the product and the quantity sold, suitable for a dot plot.
______________________________________________________________________________________________________________

5. BOX PLOT: Show the distribution of sales amounts by region.

SELECT region, sales_amount
FROM sales_data;

This query returns sales amounts by region, which can be used to generate a box plot to show the spread and distribution.
______________________________________________________________________________________________________________

6. SCATTER PLOT Show the relationship between customer age and sales amount.

SELECT customer_age, sales_amount
FROM sales_data;

This query is perfect for plotting a scatter plot to examine any relationship between customer age and sales amount.
______________________________________________________________________________________________________________

7. HISTOGRAM: Show the distribution of sales amounts.

SELECT sales_amount
FROM sales_data;

This query will return the sales amounts, allowing you to group the data into bins for a histogram showing the frequency distribution.
______________________________________________________________________________________________________________

8. SPARKLINE: Show the sales trend for each product.

SELECT 
    Product_Name, 
    Order_Date, 
    SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Product_Name, Order_Date
ORDER BY Product_Name, Order_Date;

This query will return a dataset in which you will get multiple rows with Order_Date and corresponding total_sales for each Product_Name. 
Using visualization tools, you can then plot this data as a sparkline by assigning the Order_Date to the X-axis and total_sales to the Y-axis.
______________________________________________________________________________________________________________

9. DATA MAP: Show total sales by region.

SELECT region, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY region;

This query fetches the total sales for each region, which can be plotted on a geographical data map.
______________________________________________________________________________________________________________

10. HEAT MAP: Show sales amount by product and region.

SELECT product, region, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY product, region;
This query returns the sales amount grouped by product and region, ideal for creating a heatmap to show which products perform best in each region.
