#!/bin/bash

# This is a script to automate conversion of diacritics, from the syntax
# of the Latex markup language ({\'a}) into its literal form (á).

echo -n "Hello handsome, please enter the absolute path and press [ENTER]: "
read -e file

sed -i "s/{\\\'a}/á/g" $file
sed -i "s/{\\\'A}/Á/g" $file
sed -i "s/{\\\'e}/é/g" $file
sed -i "s/{\\\'E}/É/g" $file
sed -i "s/{\\\'\\\i}/í/g" $file
sed -i "s/{\\\'\\\I}/Í/g" $file
sed -i "s/{\\\'o}/ó/g" $file
sed -i "s/{\\\'O}/Ó/g" $file
sed -i "s/{\\\'u}/ú/g" $file
sed -i "s/{\\\'U}/Ú/g" $file
sed -i "s/{\\\'y}/ý/g" $file
sed -i "s/{\\\'Y}/Ý/g" $file
sed -i "s/{\\\r{u}}/ů/g" $file
sed -i "s/{\\\r{U}}/Ů/g" $file
sed -i "s/{\\\v{c}}/č/g" $file
sed -i "s/{\\\v{C}}/Č/g" $file
sed -i "s/{\\\v{d}}/ď/g" $file
sed -i "s/{\\\v{D}}/Ď/g" $file
sed -i "s/{\\\v{e}}/ě/g" $file
sed -i "s/{\\\v{E}}/Ě/g" $file
sed -i "s/{\\\v{r}}/ř/g" $file
sed -i "s/{\\\v{R}}/Ř/g" $file
sed -i "s/{\\\v{s}}/š/g" $file
sed -i "s/{\\\v{S}}/Š/g" $file
sed -i "s/{\\\v{t}}/ť/g" $file
sed -i "s/{\\\v{T}}/Ť/g" $file
sed -i "s/{\\\v{z}}/ž/g" $file
sed -i "s/{\\\v{Z}}/Ž/g" $file

echo "Done"
