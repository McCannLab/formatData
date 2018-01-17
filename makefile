drop = ~/Dropbox/GDFD\ Data\ \&\ Supporting\ Docs\ 2017
cur = $(shell pwd)

buildcsv:
	if test -d $(drop)/csvFiles; \
	then rm -f $(drop)/csvFiles/*; \
	else mkdir $(drop)/csvFiles; \
	fi
	cd $(drop); ssconvert -S ON_JP_Swe_Data_2017v_4.xlsx csvFiles/%s.csv
	cd $(drop); ssconvert -S Ontario_Historical.xlsx csvFiles/%s.csv
	# cd $(drop); ssconvert -S ON_JP_Swe_Data_2017v2.xlsx $(cur)/inst/csvFiles/%s.csv
