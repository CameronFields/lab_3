echo "enter your regular expression"
read regexp
echo "enter your file name to search for regular expression"

read filename
grep "$regexp" $filename

grep "^((\([0-9]{3}\) )|([0-9]{3}\-))[0-9]{3}\-[0-9]{4}$" regex_practice.txt | wc -l  
grep "^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}" regex_practice.txt | wc -l
grep "^((\([0-9]{3}\) )|([0-9]{3}\-))[0-9]{3}\-[0-9]{4}$" regex_practice.txt | grep ^303 >>phone_results.txt
grep "^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}" regex_practice.txt | grep -v "geociities.com" >>email_results.txt
grep "$regexp" regex_practice.txt >> command_results.txt

