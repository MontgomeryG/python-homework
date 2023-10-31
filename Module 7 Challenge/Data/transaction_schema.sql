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