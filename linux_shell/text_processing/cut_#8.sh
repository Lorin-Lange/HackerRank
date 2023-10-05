####################################################
#                    HackerRank                    #
#                      Cut #8                      #
#             Solution by Lorin Lange              #
####################################################

#!/bin/bash

while read line; do
    echo "${line}" | cut -d$' ' -f1-3
done