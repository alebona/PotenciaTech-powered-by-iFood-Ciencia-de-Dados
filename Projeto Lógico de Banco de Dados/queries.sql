use ecommerce;

SELECT count(*) FROM clients;

select distinct concat(Fnome,' ',Minit,' ',LName) as Client from clients;

SELECT Fnome, LName, CPF
FROM clients
WHERE clientType = 'PF';

SELECT Pname, category, rating
FROM product;

select  concat(Fnome,' ',Minit,' ',LName) as Client, r.description, r.status, p.typePayment, p.valor 
		from clients c, request r, payments p 	
        where c.idClient = r.idClient and p.idPayment = r.idPayment;

SELECT Fnome, LName, CPF
FROM clients
WHERE idClient IN (
    SELECT idClient
    FROM request
    WHERE status = 'confirmado'
);
     
SELECT concat(c.Fnome,' ', c.LName)as clientName, COUNT(r.idRequest) AS NumPedidos
FROM clients c
JOIN request r ON c.idClient = r.idClient
WHERE r.status = 'confirmado'
GROUP BY c.idClient
HAVING COUNT(r.idRequest) > 1;

UPDATE payments p
JOIN request r ON p.idPayment = r.idPayment
SET limitAvaliable = 600
WHERE r.status = 'Processando' and limitAvaliable < 600;

SELECT idProduct, Pname, rating
FROM product
ORDER BY rating DESC, Pname;

DELETE product
FROM product
LEFT JOIN productSupplier ps ON product.idProduct = ps.idProduct
WHERE ps.idProduct IS NULL;

SELECT category, SUM(quantity) AS total_quantity
FROM productSupplier
INNER JOIN product ON productSupplier.idProduct = product.idProduct
GROUP BY category;