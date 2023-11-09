#/bin/awk -f 

BEGIN {
   FS = ","
   OFS = ","
}
{
   if (NR==1) {next}
   distance[$5]+=$17
   count[$5]+=1
}
END {
   for (i in count) {
      print i, distance[i]/count[i] > "a3t4.dat"
   }
} 
