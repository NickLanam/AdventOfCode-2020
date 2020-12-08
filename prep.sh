#!/bin/bash
if [ -z "${1}" ]; then
  echo "Please provide day number as an argument"
  exit 1
fi
curl "https://adventofcode.com/2020/day/${1}/input" \
 -H "Cookie: session=$(cat "$(dirname $0)/input/cookie.txt")" \
 -o "$(dirname $0)/input/day${1}.txt"
cat > "$(dirname $0)/day${1}.js" <<EOF
const { getInput, fromRaw } = require('./utils');
const input = getInput(${1});
const sample = fromRaw(\`\`);

const day${1}star1 = (() => {
  //
})();

const day${1}star2 = (() => {
  //
})();

console.log('Star 1: ', day${1}star1);
console.log('Star 2: ', day${1}star2)

EOF