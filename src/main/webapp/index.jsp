<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Simple Calculator</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
    }

    #calculator {
      width: 300px;
      margin: 50px auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    input {
      width: 100%;
      margin-bottom: 10px;
      padding: 10px;
      box-sizing: border-box;
    }

    button {
      width: 48%;
      padding: 10px;
      box-sizing: border-box;
      font-size: 16px;
      cursor: pointer;
    }

    #result {
      margin-top: 10px;
      font-size: 18px;
      font-weight: bold;
    }
  </style>
</head>
<body>

  <div id="calculator">
    <input type="text" id="display" readonly>
    <br>
    <button onclick="appendToDisplay('1')">1</button>
    <button onclick="appendToDisplay('2')">2</button>
    <button onclick="appendToDisplay('3')">3</button>
    <button onclick="appendToDisplay('+')">+</button>
    <br>
    <button onclick="appendToDisplay('4')">4</button>
    <button onclick="appendToDisplay('5')">5</button>
    <button onclick="appendToDisplay('6')">6</button>
    <button onclick="appendToDisplay('-')">-</button>
    <br>
    <button onclick="appendToDisplay('7')">7</button>
    <button onclick="appendToDisplay('8')">8</button>
    <button onclick="appendToDisplay('9')">9</button>
    <button onclick="appendToDisplay('*')">*</button>
    <br>
    <button onclick="appendToDisplay('0')">0</button>
    <button onclick="clearDisplay()">C</button>
    <button onclick="calculateResult()">=</button>
    <button onclick="appendToDisplay('/')">/</button>
    <br>
    <div id="result"></div>
  </div>

  <script>
    function appendToDisplay(value) {
      document.getElementById('display').value += value;
    }

    function clearDisplay() {
      document.getElementById('display').value = '';
      document.getElementById('result').innerText = '';
    }

    function calculateResult() {
      try {
        const result = eval(document.getElementById('display').value);
        document.getElementById('result').innerText = `Result: ${result}`;
      } catch (error) {
        document.getElementById('result').innerText = 'Error';
      }
    }
  </script>

</body>
</html>
