#!/bin/bash

## remove \coloremphasis tag

sed 's#\\coloremphasis##g' my_refs.html > tmp

# this part doesn't acgtually work...
for i in {1..33}; do
    print $i
    sed 's#<div class="csl-left-margin">['$i']</div><div class="csl-right-inline">#<div class="csl-right-inline">['$i']#g' tmp > tmp1
    mv tmp1 tmp
done

mv tmp my_refs.html
