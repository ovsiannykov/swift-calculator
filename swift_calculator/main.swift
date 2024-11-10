import Foundation

func getOperation() -> String {
    while true {
        print("Введите одну из операций (+, -, *, /): ", terminator: "")
        if let input = readLine() {
            if ["+", "-", "*", "/"].contains(input) {
                return input
            } else {
                print("Ошибка: введите корректную операцию (+, -, *, /)")
            }
        } else {
            print("Ошибка: ввод не распознан. Попробуйте еще раз.")
        }
    }
}

func getDoubleInput(prompt: String) -> Double {
    while true {
        print(prompt, terminator: "")
        if let input = readLine(), let number = Double(input) {
            return number
        } else {
            print("Ошибка: введите корректное число.")
        }
    }
}

print("Добро пожаловать в программу калькулятор. Выберите операцию: +, -, * или /")

let operation = getOperation()

let firstNumber = getDoubleInput(prompt: "Введите первое число: ")
let secondNumber = getDoubleInput(prompt: "Введите второе число: ")

var result: Double?

switch operation {
case "+":
    result = firstNumber + secondNumber
case "-":
    result = firstNumber - secondNumber
case "*":
    result = firstNumber * secondNumber
case "/":
    if secondNumber != 0 {
        result = firstNumber / secondNumber
    } else {
        print("Ошибка: деление на ноль невозможно.")
    }
default:
    print("Неверная операция.")
}

if let result = result {
    print("Результат: \(result)")
}
