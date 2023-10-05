####################################################
#                    HackerRank                    #
#                      Cut #2                      #
#             Solution by Lorin Lange              #
####################################################

#!/bin/bash

while read line; do
  echo $line | cut -c2,7
done