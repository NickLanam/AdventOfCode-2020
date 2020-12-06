const fs = require('fs');

exports.getInput = function getInput(day, parse = false) {
  const raw = fs.readFileSync(`./input/day${day}.txt`);
  return raw.toString().split('\n').map(l => l.trim()).filter(l => l).map(l => parse ? JSON.parse(l) : l);
};