#!/bin/bash
#Dustin Potter

#Grep Example
grep hello sample2.txt

# -w Example
grep -w is *
grep is *

# -i Example
grep -i hello *
grep hello *

# -r Example
grep -r This *

# -v Example
grep -v e example.txt

# -l Example
grep -l is *

# -c Example
grep -c hello *

#Combination Examples
grep -rlw is *
grep -lvw This *
