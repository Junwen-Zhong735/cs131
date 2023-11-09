#/bin/awk -f 
# out put format is 
# #pickuplocationID averageTotal
BEGIN {
   FS = ","
}
{
   pickupID[$8]+=$17
   count[$8]+=1
}
END {
   for (i in count) {
      print i, pickupID[i]/count[i]
   }
} 
