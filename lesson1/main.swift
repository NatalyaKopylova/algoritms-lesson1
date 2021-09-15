//
//  main.swift
//  lesson1
//
//  Created by Natalia on 15.09.2021.
//

import Foundation

//Задание выполнила Копылова Наталья

// MARK: - Задание 1: Ввести вес и рост человека. Рассчитать и вывести индекс массы тела по формуле I=m/(h*h); где m-масса тела в килограммах, h - рост в метрах.

print("УЗНАЕМ ИНДЕКС МАССЫ ТЕЛА.\nВведите рост в сантиметрах")
guard let heightString = readLine() else { exit(1) }
print("Введите вес в килограммах")
guard let weightString = readLine() else { exit(1) }

guard let height = Double(heightString), let weight = Double(weightString) else { exit(1) }
let heightInM = height / 100
let i = weight / (heightInM * heightInM)

print("Ваш ИМТ: \(i)")

// MARK: - Задание 2: Найти максимальное из четырех чисел. Массивы не использовать.

print ("НАЙДЕМ МАКСИМАЛЬНОЕ ИЗ ЧЕТЫРЕХ ЧИСЕЛ.\nВведите первое число")
guard let number1String = readLine(), let number1 = Int(number1String) else {
    print("Введено неверное число")
    exit(1)
}
print ("Введите второе числo")
guard let number2String = readLine(), let number2 = Int(number2String) else {
    print("Введено неверное число")
    exit(1)

}
print ("Введите третье числo")
guard let number3String = readLine(), let number3 = Int(number3String) else {
    print("Введено неверное число")
    exit(1)
}
print ("Введите четвертое числo")
guard let number4String = readLine(), let number4 = Int(number4String) else {
    print("Введено неверное число")
    exit(1)
}

var numberMax = number1
if number2 > numberMax {
    numberMax = number2
}
if number3 > numberMax {
    numberMax = number3
}
if number4 > numberMax {
    numberMax = number4
}

print ("Максимальное число: \(numberMax)")

// MARK: - Задание 3: Написать программу обмена значениями двух целочисленных переменных: a. с использованием третьей переменной; b. *без использования третьей переменной.
//                            1 вариант

var a:Int = 100
var b:Int = 200

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

swapTwoInts(&a, &b)
print("ПРОГРАММА ОБМЕНА ЗНАЧЕНИЯМИ ДВУХ ЦЕЛОЧИСЛЕННЫХ ПЕРЕМЕННЫХ.\nпеременная а = \(a), переменная b = \(b)")

                          //2 вариант
func swap(_ a: inout Int, _ b: inout Int) {
    a = a + b
    b = a - b
    a = a - b
}

swap(&a, &b)
print("переменная а = \(a), переменная b = \(b)")

                          //3 вариант
func swap2(_ a: inout Int, _ b: inout Int) {
    guard a != 0  else {
        a = b
        b = 0
        return
    }
    guard b != 0  else {
        b = a
        a = 0
        return
    }
    a = a * b
    b = a/b
    a = a/b
}

swap2(&a, &b)
print("переменная а = \(a), переменная b = \(b)")

// MARK: - Задание 4: Написать программу нахождения корней заданного квадратного уравнения.

print("ПРОГРАММА НАХОЖДЕНИЯ КОРНЕЙ ЗАДАННОГО КВАДРАТНОГО УРАВНЕНИЯ.\n Введите коэффициент а")
guard let ratioAString = readLine(), let ratioA = Double(ratioAString) else {
    print("Введено неверное число")
    exit(1)  }
print("Введите коэффициент b")
guard let ratioBString = readLine(), let ratioB = Double(ratioBString) else {
    print("Введено неверное число")
    exit(1)  }
print("Введите коэффициент c")
guard let ratioCString = readLine(), let ratioC = Double(ratioCString) else {
    print("Введено неверное число")
    exit(1)  }

func getRoots(a:Double, b:Double, c:Double) -> (Double, Double)?{
    let discr = b * b - 4 * a * c
    guard discr >= 0 else { return nil }
    let x1 = -b + sqrt(discr) / 2 * a
    let x2 = -b - sqrt(discr) / 2 * a
    return (x1, x2)
}

let roots = getRoots(a: ratioA, b: ratioB, c: ratioC)

print ("Корни заданного квадратного уравнения: \n \(roots != nil ? "\(roots!.0), \(roots!.1)": "не существуют")")
