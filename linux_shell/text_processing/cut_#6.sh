####################################################
#                    HackerRank                    #
#                      Cut #6                      #
#             Solution by Lorin Lange              #
####################################################

#!/bin/bash

while read line; do
    echo "${line}" | cut -c13-
done