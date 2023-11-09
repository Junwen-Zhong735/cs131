#/bin/awk -f 

BEGIN {
   FS = ","
   OFS = ","
}
{
   if (NR==1) {next}
   pair[$8 " - " $9]+=$17
   count[$8 " - " $9]+=1
}
END {
   for (i in count) {
      print i, pair[i]/count[i]
   }
} 
