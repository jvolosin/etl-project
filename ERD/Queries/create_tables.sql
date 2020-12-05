-- import tables
-- countries.to_csv("Tables/countries.csv", index=False, header=True)
-- wine_data.to_csv("Tables/wine_data.csv", index=True, header=True) 
-- wine_consumption.to_csv("Tables/wine_consumption.csv", index=False, header=True)
-- wine_production.to_csv("Tables/wine_production.csv", index=False, header=True)
-- temperature.to_csv("Tables/temperature.csv", index=False, header=True)
-- regions_clean2.to_csv("Tables/regions.csv", index=False, header=True)
-- region_2_clean2.to_csv("Tables/region_2.csv", index=False, header=True)
-- provinces_clean2.to_csv("Tables/provinces.csv", index=False, header=True)

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
    "region_1" varchar   NOT NULL,
    "region_2" varchar   NOT NULL,
    "variety" varchar   NOT NULL,
    "winery" varchar   NOT NULL,
    CONSTRAINT "pk_wine_data" PRIMARY KEY (
        "designation"
     )
);

CREATE TABLE "countries" (
    "country" varchar   NOT NULL,
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

CREATE TABLE "region_2" (
    "region_2" varchar   NOT NULL,
    CONSTRAINT "pk_region_2" PRIMARY KEY (
        "region_2"
     )
);

CREATE TABLE "regions" (
    "region_1" varchar   NOT NULL,
    "province" varchar   NOT NULL,
    CONSTRAINT "pk_regions" PRIMARY KEY (
        "region_1"
     )
);

CREATE TABLE "temperature" (
    "country" varchar   NOT NULL,
    "avg_temp" varchar   NOT NULL,
    CONSTRAINT "pk_temperature" PRIMARY KEY (
        "country"
     )
);

ALTER TABLE "wine_production" ADD CONSTRAINT "fk_wine_production_country" FOREIGN KEY("country")
REFERENCES "countries" ("country");

ALTER TABLE "wine_data" ADD CONSTRAINT "fk_wine_data_province" FOREIGN KEY("province")
REFERENCES "provinces" ("province");

ALTER TABLE "wine_data" ADD CONSTRAINT "fk_wine_data_region_1" FOREIGN KEY("region_1")
REFERENCES "regions" ("region_1");

ALTER TABLE "wine_data" ADD CONSTRAINT "fk_wine_data_region_2" FOREIGN KEY("region_2")
REFERENCES "region_2" ("region_2");

ALTER TABLE "countries" ADD CONSTRAINT "fk_countries_country" FOREIGN KEY("country")
REFERENCES "wine_consumption" ("country");

ALTER TABLE "provinces" ADD CONSTRAINT "fk_provinces_country" FOREIGN KEY("country")
REFERENCES "countries" ("country");

ALTER TABLE "temperature" ADD CONSTRAINT "fk_temperature_country" FOREIGN KEY("country")
REFERENCES "countries" ("country");

