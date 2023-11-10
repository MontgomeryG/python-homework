--  FOREIGN KEY (parent_id) REFERENCES parents(parent_id),

--id,name
CREATE TABLE merchant_category_table (
id INTEGER PRIMARY KEY,
name VARCHAR(50)
);


-- id,name,id_merchant_category
-- link merchant_table to merchant category table
-- PK is id
CREATE TABLE merchant_table(
id VARCHAR(30) PRIMARY KEY,
name VARCHAR(50) NOT NULL,
id_merchant_category INTEGER,
FOREIGN KEY (id_merchant_category) REFERENCES merchant_category_table(id)
);



--create card holder table
--id,name
CREATE TABLE card_holder_table (
id INTEGER PRIMARY KEY,
name VARCHAR(50)
);


--HINT** "For the credit_card and transaction tables, the card column should be a VARCHAR (20) datatype rather than an INT."
--card, cardholder_id

CREATE TABLE credit_card_table (
card VARCHAR(20) PRIMARY KEY,
cardholder_id INTEGER,
FOREIGN KEY (cardholder_id) REFERENCES card_holder_table(id)
);


-- Create table for transactions
-- HINT** "For the transaction table, the date column should be a TIMESTAMP datatype rather than DATE."
--HINT** "For the credit_card and transaction tables, the card column should be a VARCHAR (20) datatype rather than an INT."

--id,date,amount,card,id_merchant
CREATE TABLE transaction_table(
  id VARCHAR(30) PRIMARY KEY,
  date TIMESTAMP,
  amount FLOAT,
  card VARCHAR(20),
  id_merchant VARCHAR(30),
  FOREIGN KEY (id_merchant) REFERENCES merchant_table(id),
  FOREIGN KEY (card) REFERENCES credit_card_table(card)
);