//
//  ViewController.swift
//  ZzzSwiftProject
//
//  Created by zhouzezhou on 2018/5/2.
//  Copyright © 2018年 zzz. All rights reserved.
//

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}


import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("hello world !")
//        NSLog("hello world !")
        
//        functionMothed()
        
//        classMothed()
        
//        enumAndStruct()
        
        protocolAndExtension()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func protocolAndExtension()
    {
        
        
        class SimpleClass: ExampleProtocol {
            var simpleDescription: String = "A very simple class."
            var anotherProperty: Int = 69105
            func adjust() {
                simpleDescription += "  Now 100% adjusted."
            }
        }
        var a = SimpleClass()
        a.adjust()
        let aDescription = a.simpleDescription
        print(aDescription)
        
        struct SimpleStructure: ExampleProtocol {
            var simpleDescription: String = "A simple structure"
            mutating func adjust() {
                simpleDescription += " (adjusted)"
            }
        }
        var b = SimpleStructure()
        b.adjust()
        let bDescription = b.simpleDescription
        print(bDescription)
        
        
    }
    

    func enumAndStruct()
    {
        enum Rank: Int {
            case ace
            case two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
//            case jack, queen, king
            func simpleDescriptionaa() -> String {
                switch self {
                case .ace:
                    return "ace"
                case .jack:
                    return "jack"
                case .queen:
                    return "queen"
                case .king:
                    return "king"
                default:
                    return String(self.rawValue)
                }

            }
        }
        
        let ace = Rank.ace
        let aceRawValue = ace.rawValue // 原始值
        
        let six = Rank.six
        let sixRawValue = six.rawValue // 原始值

//        let enumFunc = Rank.simpleDescription(jack)
//        print(Rank.jack.simpleDescriptionaa())
        print(ace)
//        print(ace.simpleDescriptionaa())
        print(aceRawValue)
        
        print(six)
        print(sixRawValue)
        
        func compareEnum(firstValue:Rank, secondValue:Rank) -> Bool
        {
            if firstValue == secondValue
            {
                return true
            }
            else
            {
                return false
            }
        }
        
        print(compareEnum(firstValue: ace, secondValue: six))
//        print(enumFunc)
        
        if let convertedRank = Rank(rawValue: 3) {
            let threeDescription = convertedRank
            print(threeDescription)
        }
        
        print()
        
        
        enum Suit:Int {
            // spades黑桃
            case spades
            case hearts, diamonds, clubs// 梅花
            func simpleDescription() -> String {
                switch self {
                case .spades:
                    return "spades"
                case .hearts:
                    return "hearts"
                case .diamonds:
                    return "diamonds"
                case .clubs:
                    return "clubs"
                }
            }
            
            func color() -> String {
                switch self {
                case .spades, .clubs:
                    return "black"
                default:
                    return "red"
                }
                
//                if self == .spades || self == .clubs || self == .hearts
//                {
//                    return "black"
//                }
//                else
//                {
//                    return "red"
//                }
            }
        }
        let hearts = Suit.hearts
        let heartsDescription = hearts.simpleDescription()
        
        print(hearts.color())
        
        print()
        
        
        enum ServerResponse {
            case result(String, String)
            case failure(String)
            case timeout(String)
        }
        
        let result = ServerResponse.result("6:00 am", "8:09 pm")
//        let failure = ServerResponse.failure("Out of cheese.")
        
        switch result {
        case let .result(sunrise, sunset):
            print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
        case let .failure(message):
            print("Failure...  \(message)")
        case let .timeout(msg):
            print("request is time out ,reason is \(msg)")
        }
        
        let convertedRank = Rank(rawValue: 3)
        
        struct Card {
            var rank: Rank
            var suit: Suit
            func simpleDescription() -> String {
                return "The \(rank.simpleDescriptionaa()) of \(suit.simpleDescription())"
            }
            
            func createAPackCard() -> Array<Card>
            {
                var dic = Array<Card>()
                
                for j in 0...3
                {
                    if let aSuit = Suit(rawValue: j)
                    {
                        for i in 0...12
                        {
                            if let aRank = Rank(rawValue: i)
                            {
                                let ACard = Card(rank: aRank, suit: aSuit)
                                dic.append(ACard)
                                print(ACard.simpleDescription())
                            }
                        }
                    }
                }
                return dic
            }
            
        }
        
        let threeOfSpades = Card(rank: .three, suit: .spades)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        
        print(threeOfSpadesDescription)
        
        let aPackCard = threeOfSpades.createAPackCard()
//        print(aPackCard)
        
        enum DateStr:String
        {
            case monday, tuesday, wednesday, thriday, friday, saturday, sunday
        }
        
        let day = DateStr.monday
        print(day)
        
        let day2:DateStr? = DateStr(rawValue:"tuesday")
        print(day2 ?? "no value")
        
        
        
        
        
    }
    
    func classMothed() {
        
        
//        var shape = Shape()
//        print(shape.numberOfSides)
//        print(shape.numberOfPeople)
//
//        shape.numberOfSides = 7
//        var shapeStr = shape.simpleDescription()
//        print(shapeStr)
//
//        let test = Square(sideLength: 5.2, name: "my test square")
//        print(test.area())
//        print(test.simpleDescription())
//
//        var circle = Circle(radius: 5, name: "Zzz planit a circle")
//        print(circle.area())
//        print(circle.simpleDescription())
//
//
//        var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
//        print(triangle.perimeter)
//        triangle.perimeter = 9.9
//        print(triangle.sideLength)

        print()
        
        var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
        print(triangleAndSquare.square.sideLength)
        print(triangleAndSquare.triangle.sideLength)
        triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
        print(triangleAndSquare.triangle.sideLength)
        
        let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
        let sideLength = optionalSquare?.sideLength
        print(sideLength)
        
        
        
        
        
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
    var sideLength: Double
    
    init(sideLength: Double, name: String)
    {
        print("Square init !")
        
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double{
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of lenght \(sideLength)"
    }
    
}

class EquilateralTriangle: NameShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}


