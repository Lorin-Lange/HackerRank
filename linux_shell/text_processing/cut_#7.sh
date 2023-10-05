####################################################
#                    HackerRank                    #
#                      Cut #7                      #
#             Solution by Lorin Lange              #
####################################################

#!/bin/bash

while read line; do
    echo "${line}" | cut -d$' ' -f4
done