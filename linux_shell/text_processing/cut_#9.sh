####################################################
#                    HackerRank                    #
#                      Cut #9                      #
#             Solution by Lorin Lange              #
####################################################

#!/bin/bash

while read line; do
    echo "${line}" | cut -d$'\t' -f2-
done