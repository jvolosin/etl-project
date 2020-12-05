<<<<<<< HEAD
CREATE TABLE wine_consumption (
    country VARCHAR(100) PRIMARY KEY NOT NULL,
    pct_wine_consumption FLOAT
);

CREATE TABLE countries (
    country VARCHAR(100) PRIMARY KEY NOT NULL,
    country_code VARCHAR(4),
	FOREIGN KEY (country) REFERENCES wine_consumption(country)
=======
CREATE TABLE countries (
    country VARCHAR(100) PRIMARY KEY NOT NULL
);

CREATE TABLE wine_consumption (
    country VARCHAR(100) PRIMARY KEY NOT NULL,
    pct_wine_consumption FLOAT,
	FOREIGN KEY (country) REFERENCES countries(country)
>>>>>>> cb6bd3bc573dc6cb14de770b3c7a5e18f55d3580
);

CREATE TABLE wine_production (
    country VARCHAR(100) PRIMARY KEY NOT NULL,
    volume INT,
    population FLOAT,
	FOREIGN KEY ("country") REFERENCES countries(country)
);

CREATE TABLE provinces (
    country VARCHAR(100),
    province VARCHAR(100) PRIMARY KEY NOT NULL,
	FOREIGN KEY (country) REFERENCES countries(country)
);

CREATE TABLE regions (
<<<<<<< HEAD
    region_1 VARCHAR(100) PRIMARY KEY NOT NULL,
    province VARCHAR(100), 
=======
    province VARCHAR(100), 
	region_1 VARCHAR(100) PRIMARY KEY NOT NULL,
>>>>>>> cb6bd3bc573dc6cb14de770b3c7a5e18f55d3580
	FOREIGN KEY (province) REFERENCES provinces(province)
);

CREATE TABLE region_2 (
    region_2 VARCHAR(100) PRIMARY KEY NOT NULL
);

CREATE TABLE wine_data (
<<<<<<< HEAD
    description VARCHAR(255),
    designation VARCHAR(255) PRIMARY KEY NOT NULL,
=======
    wine_id INT PRIMARY KEY,
	description VARCHAR,
    designation VARCHAR,
>>>>>>> cb6bd3bc573dc6cb14de770b3c7a5e18f55d3580
    points INT,
    price FLOAT,
    province VARCHAR(100),
    region_1 VARCHAR(100),
    region_2 VARCHAR(100),
    variety VARCHAR(100),
    winery VARCHAR(100),
	FOREIGN KEY (province) REFERENCES provinces(province),
	FOREIGN KEY (region_1) REFERENCES regions(region_1),
	FOREIGN KEY (region_2) REFERENCES region_2(region_2)
);

CREATE TABLE temperature (
    country VARCHAR(100) PRIMARY KEY NOT NULL,
<<<<<<< HEAD
    avg_temp FLOAT,
=======
    avg_temp VARCHAR(10),
>>>>>>> cb6bd3bc573dc6cb14de770b3c7a5e18f55d3580
	FOREIGN KEY (country) REFERENCES countries(country)
);