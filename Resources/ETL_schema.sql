-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "wine_production" (
    "country" varchar   NOT NULL,
    "volume" INT   NOT NULL,
    "population" Float   NOT NULL,
    CONSTRAINT "pk_wine_production" PRIMARY KEY (
        "country"
     )
);

CREATE TABLE "wine_consumption" (
    "country" varchar   NOT NULL,
    "pct_wine_consumption" Float   NOT NULL,
    CONSTRAINT "pk_wine_consumption" PRIMARY KEY (
        "country"
     )
);

CREATE TABLE "wine_data" (
    "description" varchar   NOT NULL,
    "designation" varchar   NOT NULL,
    "points" INT   NOT NULL,
    "price" Float   NOT NULL,
    "province" varchar   NOT NULL,
    -- region_1 varchar FK >- regions.region_1
    "variety" varchar   NOT NULL,
    "winery" varchar   NOT NULL,
    CONSTRAINT "pk_wine_data" PRIMARY KEY (
        "designation"
     )
);

CREATE TABLE "countries" (
    "country" varchar   NOT NULL,
    "country_code" varchar   NOT NULL,
    CONSTRAINT "pk_countries" PRIMARY KEY (
        "country"
     )
);

CREATE TABLE "provinces" (
    "country" varchar   NOT NULL,
    "province" varchar   NOT NULL,
    CONSTRAINT "pk_provinces" PRIMARY KEY (
        "province"
     )
);

CREATE TABLE "region_US" (
    "region_1_US" varchar   NOT NULL,
    "region_2" varchar   NOT NULL,
    CONSTRAINT "pk_region_US" PRIMARY KEY (
        "region_1_US"
     )
);

CREATE TABLE "regions" (
    "region_1" varchar   NOT NULL,
    "province" varchar   NOT NULL,
    CONSTRAINT "pk_regions" PRIMARY KEY (
        "province"
     )
);

CREATE TABLE "temperature" (
    "country" varchar   NOT NULL,
    "avg_temp" float   NOT NULL,
    CONSTRAINT "pk_temperature" PRIMARY KEY (
        "country"
     )
);

ALTER TABLE "wine_production" ADD CONSTRAINT "fk_wine_production_country" FOREIGN KEY("country")
REFERENCES "countries" ("country");

ALTER TABLE "wine_data" ADD CONSTRAINT "fk_wine_data_province" FOREIGN KEY("province")
REFERENCES "provinces" ("province");

ALTER TABLE "countries" ADD CONSTRAINT "fk_countries_country" FOREIGN KEY("country")
REFERENCES "wine_consumption" ("country");

ALTER TABLE "provinces" ADD CONSTRAINT "fk_provinces_country" FOREIGN KEY("country")
REFERENCES "countries" ("country");

ALTER TABLE "provinces" ADD CONSTRAINT "fk_provinces_province" FOREIGN KEY("province")
REFERENCES "regions" ("province");

ALTER TABLE "region_US" ADD CONSTRAINT "fk_region_US_region_1_US" FOREIGN KEY("region_1_US")
REFERENCES "regions" ("region_1");

ALTER TABLE "temperature" ADD CONSTRAINT "fk_temperature_country" FOREIGN KEY("country")
REFERENCES "countries" ("country");

