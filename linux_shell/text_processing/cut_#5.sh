####################################################
#                    HackerRank                    #
#                      Cut #5                      #
#             Solution by Lorin Lange              #
####################################################

#!/bin/bash

while read line; do
    echo "${line}" | cut -d$'\t' -f1-3
done