--load data for all transactions under $2
SELECT merchant_table.id_merchant_category,
merchant_table.name, transaction_table.id_merchant, transaction_table.amount,
transaction_table.date, credit_card_table.card, card_holder_table.id
FROM merchant_category_table
JOIN merchant_table ON merchant_category_table.id = merchant_table.id_merchant_category
JOIN transaction_table ON merchant_table.id = transaction_table.id_merchant
JOIN credit_card_table ON transaction_table.card = credit_card_table.card
JOIN card_holder_table ON credit_card_table.cardholder_id = card_holder_table.id
WHERE amount<2;



--load date, card, amount from specific cardholder (in this case #2)
SELECT transaction_table.date, transaction_table.card, transaction_table.amount
FROM transaction_table
JOIN credit_card_table ON transaction_table.card = credit_card_table.card
JOIN card_holder_table ON credit_card_table.cardholder_id = card_holder_table.id
WHERE card_holder_table.id = 2;

--load date, card, amount, id_merchant, cardholder_id for cardholder (in this case #25)
SELECT transaction_table.date, transaction_table.card, transaction_table.amount, 
transaction_table.id_merchant, credit_card_table.cardholder_id
FROM transaction_table
JOIN credit_card_table ON transaction_table.card = credit_card_table.card
JOIN card_holder_table ON credit_card_table.cardholder_id = card_holder_table.id
WHERE card_holder_table.id = 25;


--load name merchant category, id merchant category, name merchant, id merchant, amount, date, card, cardholder id
-- for cardholder (in this case #25)
-- for amount over $200
SELECT merchant_category_table.name, merchant_table.id_merchant_category,
merchant_table.name, transaction_table.id_merchant, transaction_table.amount,
transaction_table.date, credit_card_table.card, card_holder_table.id
FROM merchant_category_table
JOIN merchant_table ON merchant_category_table.id = merchant_table.id_merchant_category
JOIN transaction_table ON merchant_table.id = transaction_table.id_merchant
JOIN credit_card_table ON transaction_table.card = credit_card_table.card
JOIN card_holder_table ON credit_card_table.cardholder_id = card_holder_table.id
WHERE card_holder_table.id = 25 AND amount > 200;



-- load date, amount, card, merchant id, cardholder id, cardholder name, merchant name, merchant category id, merchant category name
-- for cardholder (in this case #1)
SELECT transaction_table.date, transaction_table.amount, transaction_table.card, transaction_table.id_merchant,
credit_card_table.cardholder_id, card_holder_table.name, merchant_table.name, merchant_table.id_merchant_category,
merchant_category_table.name
FROM transaction_table
JOIN merchant_table ON transaction_table.id_merchant = merchant_table.id
JOIN merchant_category_table ON merchant_table.id_merchant_category = merchant_category_table.id
JOIN credit_card_table ON transaction_table.card = credit_card_table.card
JOIN card_holder_table ON credit_card_table.cardholder_id = card_holder_table.id
WHERE card_holder_table.id = 1;