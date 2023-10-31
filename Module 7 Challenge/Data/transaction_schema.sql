-- Create table for transactions
--id,date,amount,card,id_merchant
CREATE TABLE transaction_table(
  id VARCHAR(30) NOT NULL,
  date TIMESTAMP,
  amount FLOAT,
  card VARCHAR(20),
  id_merchant INT
);