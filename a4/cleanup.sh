#!/bin/bash

sed -i 's/^s*$/|/g' movies.csv
# replaces lines with only whitespace with the character | as the lines with whitespaces only mainly occur before lines with "Stars:" making the lacking of "|" an inconsistency in the file
