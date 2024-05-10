SELECT TOP (1000) [User_ID]
      ,[Product_ID]
      ,[Product_Name]
      ,[Brand]
      ,[Category]
      ,[Price]
      ,[Rating]
      ,[Color]
      ,[Size]
  FROM [SQL Memeso].[dbo].[Fashion]

 --Retrieve distinct product names
  SELECT DISTINCT "Product_Name"
  FROM Fashion;

  --Retrive records where price is greater than 50 and product name starts with letter D
  SELECT * 
  FROM Fashion
  WHERE (Price > 50 ) 
  AND ("Product_Name" LIKE 'D%');

   --Count records where price is greater than 50 and product name starts with letter D
   SELECT COUNT(*) As Record_Count
  FROM Fashion
  WHERE (Price > 50 ) 
  AND ("Product_Name" LIKE 'D%');

  --Retrieve records where brand is Adidas
  SELECT * 
  FROM Fashion
  WHERE Brand = 'Adidas';

 --Retrieve records where rating is greater or Equal to 3
  SELECT * 
  FROM Fashion
  WHERE Rating >=3;

--Top 5 rated product by product_id
SELECT TOP 5 product_id, AVG(rating) AS average_rating
FROM Fashion
GROUP BY product_id
ORDER BY average_rating DESC
;

--Top 5 rated product by product_Name
SELECT TOP 5 Product_Name, AVG(rating) AS average_rating
FROM Fashion
GROUP BY Product_Name
ORDER BY average_rating DESC
;

--Top 5 rated product by product_Name and product_id
SELECT TOP 5 Product_Name,Product_ID, Rating
FROM Fashion
ORDER BY rating DESC
;

--Retrieve distinct Brand
  SELECT DISTINCT "Brand"
  FROM Fashion;

  --Retrieve records with price between 40 and 80 while brand is Zara and Category is Kids' Fashion
  SELECT * 
  FROM Fashion WHERE Price BETWEEN 40 AND 80
  AND Brand = 'Zara'
  AND Category = 'Kids'' Fashion'
  ;

  --Retrieve records with price between 40 and 80 while brand is Zara and Category is Men's Fashion
  SELECT * 
  FROM Fashion WHERE Price BETWEEN 40 AND 80
  AND Brand = 'Zara'
  AND Category = 'Men''s Fashion'
  ;

    --Retrieve records with price between 40 and 80 while brand is Zara and Category is Men's Fashion
	--product name is T-shirt
  SELECT * 
  FROM Fashion WHERE Price BETWEEN 40 AND 80
  AND Brand = 'Zara'
  AND Category = 'Men''s Fashion'
  AND Product_Name = 'T-shirt';


  --Retrieve records where size is 'XL' or 'L'
  SELECT * 
  FROM Fashion 
  WHERE Size IN ('XL', 'L');

--Product count where price is between 40 and 80, Brand is Zara or Gucci and category is Kids' fashion
SELECT "Brand", COUNT(Product_ID) AS total_products
FROM Fashion
WHERE Price BETWEEN 40 AND 80
AND Brand IN ('Zara','Gucci')
AND Category = 'Kids'' Fashion'
GROUP BY "Brand"
HAVING COUNT(Product_ID) > 0
ORDER BY total_products ;