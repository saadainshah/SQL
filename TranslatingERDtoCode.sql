--DROP TABLE places;
--CREATE TABLE places(
--    place_id NUMBER(6) PRIMARY KEY,
--    city VARCHAR2(50),
--    country VARCHAR2(50)
--)


DROP TABLE companies;
DROP TABLE broker_stock_ex;
DROP TABLE stock_exchange;
DROP TABLE brokers;
DROP TABLE places;


CREATE TABLE places(
    place_id NUMBER(6),
    city VARCHAR2(50),
    country VARCHAR2(50),
    CONSTRAINT places_pk PRIMARY KEY(place_id)
);

CREATE TABLE companies(
    company_id NUMBER(6),
    name VARCHAR2(50),
    place_id NUMBER(6),
    CONSTRAINT comp_pk PRIMARY KEY(company_id),
    CONSTRAINT comp_place_fk FOREIGN KEY(place_id) REFERENCES places(place_id)
);

CREATE TABLE stock_exchange(
    stock_ex_id NUMBER(6),
    name VARCHAR2(50),
    symbol VARCHAR2(10),
    place_id NUMBER(6),
    CONSTRAINT stock_ex_pk PRIMARY KEY(stock_ex_id),
    CONSTRAINT stock_ex_places_fk FOREIGN KEY (place_id) REFERENCES places(place_id)
);

CREATE TABLE brokers(
    broker_id NUMBER(6),
    first_name VARCHAR2(30),
    last_name VARCHAR2(30),
    CONSTRAINT broker_id PRIMARY KEY (broker_id)
);

CREATE TABLE broker_stock_ex(
    broker_id NUMBER(6),
    stock_ex_id NUMBER(6),
    CONSTRAINT broker_stock_ex_pk PRIMARY KEY (broker_id, stock_ex_id),
    CONSTRAINT broker_stock_ex_fk1 FOREIGN KEY (broker_id) REFERENCES brokers(broker_id),
    CONSTRAINT broker_stock_ex_fk2 FOREIGN KEY (stock_ex_id) REFERENCES stock_exchange(stock_ex_id)
);


INSERT INTO places VALUES(1, 'NewYork', 'US');
INSERT INTO stock_exchange VALUES (1, 'NYSX', 'NY', 1);

--For Full Version see Lesson03b_Solution

COMMIT;


