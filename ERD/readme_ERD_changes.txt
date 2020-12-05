corrected PK on regions table to regions_1
added region_1 and region_2 back to wine_data table
added FK from wine_data.region_2 to region_US.region_2, many-to-many 
added FK from wine_data.region_1 to regions.region_1, many-to-one
added FK trom regions.region_1 to region_US.region_1_US, one-to-one
