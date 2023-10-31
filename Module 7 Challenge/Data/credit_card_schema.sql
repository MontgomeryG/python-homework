--HINT** "For the credit_card and transaction tables, the card column should be a VARCHAR (20) datatype rather than an INT."
--card, cardholder_id

CREATE TABLE credit_card_table (
card VARCHAR(20) NOT NULL,
cardholder_id INT NOT NULL
);