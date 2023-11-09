--id,name
CREATE TABLE merchant_category_table (
id INT,
name VARCHAR(50)
);


-- id,name,id_merchant_category
CREATE TABLE merchant_table(
  id VARCHAR(30) NOT NULL,
  name VARCHAR(50) NOT NULL,
  id_merchant_category INT
);



--create card holder table
--id,name
CREATE TABLE card_holder_table (
id INT,
name VARCHAR(50)
);


--HINT** "For the credit_card and transaction tables, the card column should be a VARCHAR (20) datatype rather than an INT."
--card, cardholder_id

CREATE TABLE credit_card_table (
card VARCHAR(20) NOT NULL,
cardholder_id INT NOT NULL
);


-- Create table for transactions
-- HINT** "For the transaction table, the date column should be a TIMESTAMP datatype rather than DATE."
--HINT** "For the credit_card and transaction tables, the card column should be a VARCHAR (20) datatype rather than an INT."

--id,date,amount,card,id_merchant
CREATE TABLE transaction_table(
  id VARCHAR(30) NOT NULL,
  date TIMESTAMP,
  amount FLOAT,
  card VARCHAR(20),
  id_merchant INT
);