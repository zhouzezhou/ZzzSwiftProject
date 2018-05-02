//
//  ViewController.swift
//  ZzzSwiftProject
//
//  Created by zhouzezhou on 2018/5/2.
//  Copyright © 2018年 zzz. All rights reserved.
//

import UIKit

class Shape {
    
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    let numberOfPeople = 3
    func peopleNumberDescription(number: Int) -> String{
        return "meeting people number is \(number)"
    }
    
    
}

class NameShape
{
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Circle: NameShape
{
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        
    }
    
    func area() -> Double
    {
        return 3.14 * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A Circle with radius \(radius) lenght."
    }
    
}


class Square :NameShape
{
    var sideLenght: Double
    
    init(sideLenght: Double, name: String)
    {
        self.sideLenght = sideLenght
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double{
        return sideLenght * sideLenght
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of lenght \(sideLenght)"
    }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("hello world !")
//        NSLog("hello world !")
        
//        functionMothed()
        
        classMothed()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func classMothed() {
        
        
        var shape = Shape()
        print(shape.numberOfSides)
        print(shape.numberOfPeople)
        
        shape.numberOfSides = 7
        var shapeStr = shape.simpleDescription()
        print(shapeStr)
        
        let test = Square(sideLenght: 5.2, name: "my test square")
        print(test.area())
        print(test.simpleDescription())
        
        var circle = Circle(radius: 5, name: "Zzz planit a circle")
        print(circle.area())
        print(circle.simpleDescription())
        
        
    }
    
    // 函数和闭包
    func functionMothed() {
        
        let explicitFloat:Float = 4
        
        let label = "The width is "
        let width = 93
        let widthLabel = label + String(width)
        
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples + oranges) pieces of fruit."
        
        print(appleSummary)
        
        print(fruitSummary)
        
        let quotation = """
        I said "I have \(apples) apples."\n
        And then I said "I have \(apples + oranges) pieces of fruit.\\"
        """
        print(quotation)
        
        
        
        var shoppingList = ["catfish", "water", "tulips", "blue paint"]
        shoppingList[1] = "bottle of water"
        
        print(shoppingList)
        
        var occupations = [
            "Malcolm": "Captain",
            "Kaylee": "Mechanic",
            ]
        occupations["Jayne"] = "Public Relations"
        
        
        
        
        var optionalString: String? = "Hello"
        print(optionalString == nil)
        
        var optionalName: String? = nil
        var greeting = "Hello!"
        if let name = optionalName {
            greeting = "Hello, \(name)"
        }
        else
        {
            greeting = "hello , zzz"
        }
        print(greeting)
        
        
        let nickName: String? = "zhou"
        let fullName: String = "John Appleseed"
        let informalGreeting = "Hi \(nickName ?? fullName)"
        
        print(informalGreeting)
        
        
        let vegetable = "red pepper"
        switch vegetable {
        case "celery":
            print("Add some raisins and make ants on a log.")
        case "cucumber", "watercress":
            print("That would make a good tea sandwich.")
        case let x where x.hasSuffix("pepper"):
            print("Is it a spicy \(x)?")
        default:
            print("Everything tastes good in soup.")
        }
        
        
        
        
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
            ]
        
        var largest = 0
        var kindName = ""
        for (kind, numbers) in interestingNumbers
        {
            for number in numbers
            {
                if number > largest
                {
                    largest = number
                    kindName = kind
                }
            }
        }
        print(largest)
        print(kindName )
        
        
        var total = 0
        for i in 0...4 {
            total += i
            print(i)
        }
        print(total)
        
        
        
        func greet(_ person: String,eat food:String) -> String{
            return "Hello \(person), lunch is \(food)"
        }
        
        print(greet("zhouzezhou", eat: "eggs"))
        
        
        func calculateStatistics(分数 scores: [Int]) -> (min: Int, max: Int, sum: Int) {
            var min = scores[0]
            var max = scores[0]
            var sum = 0
            
            for score in scores {
                if score > max {
                    max = score
                } else if score < min {
                    min = score
                }
                sum += score
            }
            
            return (min, max, sum)
        }
        let statistics = calculateStatistics(分数: [5, 3, 100, 3, 9])
        print(statistics.sum)
        print(statistics.0)
        
        
        
        func sumOf(_ numbers: Int...) -> Int {
            var sum = 0
            for number in numbers {
                sum += number
            }
            return sum
        }
        print(sumOf())
        
        func averageOf(numbers: Int...) -> Double
        {
            // 内嵌函数 test
            print("内嵌函数 test \(statistics.min)")
            
            var sum = 0
            for number in numbers
            {
                sum += number
            }
            
            let average = Double(sum) / Double(numbers.count)
            return average
        }
        print(averageOf(numbers: 1, 3, 6))
        
        
        
        
        func makeIncrementer() -> ((Int) -> Int) {
            func addOne(number: Int) -> Int {
                
                
                // 内嵌函数 test
                print("内嵌函数 test \(statistics.min)")
                
                return 1 + number
            }
            return addOne
        }
        var increment = makeIncrementer()
        print(increment(7))
        
        
        
        
        func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
            for item in list {
                if condition(item) {
                    return true
                }
            }
            return false
        }
        func lessThanTen(number: Int) -> Bool {
            return number < 10
        }
        var numbers = [20, 19, 7, 12]
        print(hasAnyMatches(list: numbers, condition: lessThanTen))
        
        print(numbers)
        
        print(numbers.map {
            (number: Int) -> Int in
            if number % 2 != 0
            {
                return 0
            }
            else
            {
                let result = 3 * number
                return result
                
            }
        })
        
        print()
        
        print(numbers.map{number in 0})
        
        let sortedNumbers = numbers.sorted { $0 < $1 }
        print(sortedNumbers)
    }
    
}


