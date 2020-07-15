numbers = [1, -3, 8, 4, 9, 10, 16, 20];

function pairSumNumber(number, sum) {
  number.forEach(function (firstNumber) {
    number.forEach(function (secondNumber) {
      var sum1 = firstNumber + secondNumber;
      if (sum1 == sum) {
        console.log(firstNumber, secondNumber);
      }
    });
  });
}

pairSumNumber(numbers, 5);
