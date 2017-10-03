##Christopher Robles
First create a mafdafld file with all SNPs
example:

SNPID A1 A2 MAF DAF LD
10:100000625 G A 0.4321 0.4321 132.021

then run the scripts make_features to make a binary rbin file that you will use for the matching.

Next run the  match_features script 
You can then run the compare baseline to calculate statistics needed



NOTE:  some of the commented out code is from when the scripts were hard coded, and may or may not be of use.  If you wish to have a different background set for how we match the SNPs, you can change how the rbin files are made from the make_features script.  We used three backgrounds, (1)daf and ld matched, (2) daf only, and (3)randomly matched SNPs 
