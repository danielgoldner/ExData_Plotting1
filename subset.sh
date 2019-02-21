head -1 household_power_consumption.txt | sed 's/;/,/g' > subsetdata.txt; grep "^[12]/2/2007" household_power_consumption.txt | sed 's/;/,/g' >> subsetdata.txt
