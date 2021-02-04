class Logic {
  // These variables will handle everything for our calculator
  double firstNumber = 0;
  double secondNumber = 0;
  dynamic firstResult = "";

  ///Final result is the first thing we will see in our calculator
  dynamic finalResult = "0";
  dynamic operation = "";

  //This function will reset the calculator
  void reset() {
    firstNumber = 0;
    secondNumber = 0;
    firstResult = "";
    finalResult = "0";
    operation = "";
  }

  /// THESE WILL BE EXECUTED BY THE BUTTONS, added after the below operations sections
  void add() {
    parseNumber();
    performOperation('+');
  }

  void subtract() {
    parseNumber();
    performOperation('-');
  }

  void multiply() {
    parseNumber();
    performOperation('*');
  }

  void divide() {
    parseNumber();
    performOperation('/');
  }

  void percentage() {
    firstResult = firstNumber / 100;
    finalResult = firstResult;
  }

  void negative() {
    firstResult.toString().startsWith('-')
        ? firstResult = firstResult.toString().substring(1)
        : firstResult = '-' + firstResult.toString();
    finalResult = firstResult;
  }

  void decimal() {
    if (!firstResult.toString().contains('.')) {
      //if it doenst contain this result
      firstResult = firstResult.toString() + '.0';
    }
    finalResult = firstResult;
  }

  ///To execute sign of = so we will cehck last operation and execute accordingly
  void execute() {
    if (operation == '+') {
      additionCalculation();
    } else if (operation == '-') {
      subtractionCalculation();
    } else if (operation == '/') {
      divisionCalculation();
    } else if (operation == '*') {
      multiplyCalculation();
    }
  }

  /// The following are operations taht will be executed when the user types the calculator
  /// setNumber is executed when the user types the calculator
  void setNumber(number) {
    firstResult += number;
    finalResult = firstResult;
  }

  /// FUnction checks whether calculation is successful and parses it accordingly.
  /// what it will do is check whether we chose the  first number and
  /// then displays the second number to new result.
  ///
  void parseNumber() {
    if (firstNumber == 0) {
      firstNumber = double.parse(firstResult);
    } else {
      secondNumber = double.parse(firstResult);
    }
  }

  ///Adds the first and second number and gives a result to a string
  void additionCalculation() {
    firstResult = (firstNumber + secondNumber).toString();
    firstNumber = double.parse(firstResult);
    finalResult = firstResult;
  }

  ///sub
  void subtractionCalculation() {
    firstResult = (firstNumber - secondNumber).toString();
    firstNumber = double.parse(firstResult);
    finalResult = firstResult;
  }

  ///Multiplication
  void multiplyCalculation() {
    firstResult = (firstNumber * secondNumber).toString();
    firstNumber = double.parse(firstResult);
    finalResult = firstResult;
  }

//Division
  void divisionCalculation() {
    firstResult = (firstNumber / secondNumber).toString();
    firstNumber = double.parse(firstResult);
    finalResult = firstResult;
  }

  void performOperation(symbol) {
    operation = symbol;
    firstResult = "";
  }
}
