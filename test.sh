for line in $(cat ~/Downloads/carplates/filename.txt)
do 
   	 echo $line | awk -F "^.*/" '{print $2}' | awk -F "." '{print $1}' >> result
	./demo recognize -p $line >> result
done

