function rollDice() {
  const diceRoll = Math.ceil(Math.random() * 20);
  return diceRoll;
}

function getDieValue(diceRoll) {
  let die_value;
  if (diceRoll === 1) {
    die_value = 1;
  } else if (diceRoll >= 2 && diceRoll <= 8) {
    die_value = 2;
  } else if (diceRoll >= 9 && diceRoll <= 12) {
    die_value = 3;
  } else if (diceRoll >= 13 && diceRoll <= 19) {
    die_value = 4;
  } else if (diceRoll === 20) {
    die_value = 5;
  }
  return die_value;
}

module.exports = { rollDice, getDieValue };
