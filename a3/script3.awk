#/bin/awk -f 

BEGIN {
   FS = ","
}
{
   if (NR==1)
 	{next}

   if ($4 == 0 || $4 == " ") 
	print $14 >> $4".dat";
   else 
	print $14/$4 >> $4".dat";
   fi
}
