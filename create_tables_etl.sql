CREATE TABLE wine_consumption (
    country VARCHAR(50) PRIMARY KEY NOT NULL,
    pct_wine_consumption FLOAT
);

CREATE TABLE countries (
    country VARCHAR(50) PRIMARY KEY NOT NULL,
    country_code VARCHAR(4),
	FOREIGN KEY (country) REFERENCES wine_consumption(country)
);

CREATE TABLE wine_production (
    country VARCHAR(50) PRIMARY KEY NOT NULL,
    volume INT,
    population FLOAT,
	FOREIGN KEY ("country") REFERENCES countries(country)
);

CREATE TABLE regions (
    region_1 VARCHAR(50) PRIMARY KEY NOT NULL,
    province VARCHAR(50)
);

CREATE TABLE region_US (
    region_1_US VARCHAR(50) PRIMARY KEY NOT NULL,
    region_2 VARCHAR(50),
	FOREIGN KEY (region_1_US) REFERENCES regions(region_1)
);

CREATE TABLE provinces (
    country VARCHAR(50),
    province VARCHAR(50) PRIMARY KEY NOT NULL,
	FOREIGN KEY (country) REFERENCES countries(country),
	FOREIGN KEY (province) REFERENCES regions(province)
);

CREATE TABLE wine_data (
    description VARCHAR(255),
    designation VARCHAR(255) PRIMARY KEY NOT NULL,
    points INT,
    price FLOAT,
    province VARCHAR(50),
    region_1 VARCHAR(50),
    region_2 VARCHAR(50),
    variety VARCHAR(50),
    winery VARCHAR(50),
	FOREIGN KEY (province) REFERENCES provinces(province),
	FOREIGN KEY (region_1) REFERENCES regions(region_1),
	FOREIGN KEY (region_2) REFERENCES region_US(region_2)
);

CREATE TABLE temperature (
    country VARCHAR(50) PRIMARY KEY NOT NULL,
    avg_temp FLOAT,
	FOREIGN KEY (country) REFERENCES countries(country)
);