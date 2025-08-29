CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    active BOOLEAN,
    balance DECIMAL(15, 2),
    country VARCHAR(50),
    credit_score INTEGER,
    card_type VARCHAR(20),
    churn BOOLEAN,
    salary DECIMAL(15, 2),
    gender VARCHAR(1)
);