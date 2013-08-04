# use a loop for counting the number of species, order it and select the most abundant
for datafile in data*.txt
	do
		echo $datafile
		Rscript species_counts.R $datafile | sort -k 2 -n | tail -5
	done
