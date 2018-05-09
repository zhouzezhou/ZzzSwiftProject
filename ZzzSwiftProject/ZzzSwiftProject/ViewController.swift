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

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

extension Double
{
    mutating func absoluteValue()
    {
        self = fabs(self)
    }
}

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("hello world !")
//        NSLog("hello world !")
        
        // 概览
//        functionMothed()
        
//        classMothed()
        
//        enumAndStruct()
        
//        protocolAndExtension()
        
//        errorFunc()
        
//        Generic()   // 泛型
        // 泛型进程设计是进程设计语言的一种风格或范式。允许进程员在强类型进程设计语言中编写代码时使用一些以后才指定的类型，在实例化时（instantiate）作为参数指明这些类型。
        
//        guideBaseContent()
        
//        guideOperator()
        
//        guideString()
        
//        collectionType()
        
//        repeatFunc()
        
        functions()
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func functions()
    {
        
        
        func swapTwoInts(_ a: inout Int, _ b: inout Int) {
            let temporaryA = a
            a = b
            b = temporaryA
        }
        
        var someInt = 3
        var anotherInt = 107
        swapTwoInts(&someInt, &anotherInt)
        print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
        
        
        
        
    }
    
    func repeatFunc()
    {
        let minutes = 60
        let minuteInterval = 5
        for _ in stride(from: 0, to: minutes, by: minuteInterval) {
            print("z")
        }
        
        
        let anotherCharacter: Character = "a"
        switch anotherCharacter {
        case "a":
            fallthrough
        case "A":
            print("The letter A")
        default:
            print("Not the letter A")
        }
        
        
        print()
        
        func greet(person: [String: String]) {
            guard let name = person["name"] else {
                return
            }
            
            print("Hello \(name)!")
            
            guard let location = person["location"] else {
                print("I hope the weather is nice near you.")
                return
            }
            
            print("I hope the weather is nice in \(location).")
        }
        
        greet(person:["name1": "John"])
        // prints "Hello John!"
        // prints "I hope the weather is nice near you."
        greet(person:["name": "Jane", "location": "Cupertino"])
        // prints "Hello Jane!"
        // prints "I hope the weather is nice in Cupertino."
        
    }
    
    func collectionType()
    {
        var shoppingList = ["milk", "eggs", "Baking Powder", "Chocolate Spread", "Cheese", "Butter", "Other"]
        print(shoppingList)
        
        shoppingList[3...5] = ["Bananas", "Apples"]
        print(shoppingList)
        
        for item in shoppingList {
            print(item)
        }
        
        
        var letters = Set<Character>()
        print("letters is of type Set<Character> with \(letters.count) items.")
        
        letters.insert("a")
        print(letters)
        
        letters = []
        print(letters)
        
        var dic = ["zzz" : "today"]
        
    }
    
    
    func guideString()
    {
        let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
        // "Imagination is more important than knowledge" - Einstein
        let dollarSign = "\u{24}" // $, Unicode scalar U+0024
        let blackHeart = "\u{2665}" // ♥, Unicode scalar U+2665
        let sparklingHeart = "\u{1F496}" // ?, Unicode scalar U+1F496
        
        print(wiseWords)
        print(dollarSign)
        print(blackHeart)
        print(sparklingHeart)
        
        
        let eAcute: Character = "\u{E9}"
        let combinedEAcute: Character = "\u{65}\u{301}"
        
        print(eAcute)
        print(combinedEAcute)
        print()
        print("\u{65}")
        print("\u{301}")
        
        print("\u{1F1FA}\u{1F1F8}")
//        print("\u{80dc}\u{20DD}")
//        print("\u{524d}\u{20DD}")
//        print("\u{662f}\u{20DD}")
//        print("\u{8c01}\u{20DD}")
        
        
//        \u8521\u80dc\u524d\u8bf4\u4f60\u6765\u4e86
        
        
        var word = "cafe"
        print("the number of characters in \(word) is \(word.count)")
        // Prints "the number of characters in cafe is 4"
        
        word += "  \u{301}"    // COMBINING ACUTE ACCENT, U+0301
        
        print("the number of characters in \(word) is \(word.count)")
        // Prints "the number of characters in café is 4"
        
        
        
        let greeting = "Guten Tag!"
        print(greeting[greeting.startIndex])
        // G
        print(greeting[greeting.index(before: greeting.endIndex)])
        // !
        print(greeting[greeting.index(after: greeting.startIndex)])
        // u
        let index = greeting.index(greeting.startIndex, offsetBy: 7)
        print(greeting[index])
        // a
        
        for index in greeting.indices {
            print("\(greeting[index])", terminator: "")
        }
        // Prints "G u t e n   T a g ! "
        
        
        print()
        print()
        
        var welcome = "hello"
        print(welcome)
        
        welcome.insert("!", at: welcome.endIndex)
        // welcome now equals "hello!"
        print(welcome)
        
        welcome.insert(contentsOf:" there", at: welcome.index(before: welcome.endIndex))
        print(welcome)
        
        
        welcome.remove(at: welcome.index(before: welcome.endIndex))
        print(welcome)
        
        let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
        welcome.removeSubrange(range)
        print(welcome)
        
        
        let greeting2 = "Hello, world!"
        let index2 = greeting2.index(of: ",") ?? greeting2.endIndex
        let beginning = greeting2[..<index2]
        // beginning is "Hello"
        
        // Convert the result to a String for long-term storage.
        let newString = String(beginning)
        
        let dogString = "Dog‼🐶"
        for codeUnit in dogString.utf8 {
            print("\(codeUnit) ", terminator: "")
        }
        print("")
        
        for scalar in dogString.unicodeScalars {
            print("\(scalar.value) ", terminator: "")
        }
        print("")
        
        
        print(dogString.distance(from: dogString.startIndex, to: dogString.index(of: "g") ?? dogString.endIndex))
        
        print(dogString.count)
        
        
     
        
    }
    
    
    func guideOperator()
    {
        
//        let intMaxAdd1 = 9223372036854775807 + 1
        
        
        let tempInt = -3
        
        print(tempInt)
        
        
        
        if (102, "b") == (102, "b" )
        {
            print(true)
            
        }
        else
        {
            print(false)
        }
        
        
        
        
        
    }
    
    func guideBaseContent()
    {
    
        // 指南 - 基础内容
        print("z1zz")
    
        let minValue = Int32.min
        let maxValue = Int32.max
    
        print(minValue)
        print(maxValue)
    
        let hexadecimalDouble = 12 + 0x0.3p0
        print(hexadecimalDouble)
        //
    
        let paddedDouble = 000123.456
        let oneMillion = 1_000_000
        let justOverOneMillion = 00___001_0__00_000.00_______0_000_1
    
        print(oneMillion)
        print(justOverOneMillion)
    
    
    
        let tooBig: Int8 = Int8.max
    
    
        typealias AudioSample = UInt16
    
        print(AudioSample.min)
    
    
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        print(convertedNumber ?? "no value")
    
    
        var surveyAnswer: String?
        // surveyAnswer is automatically set to nil
    
        print(surveyAnswer)
    
    
        if convertedNumber != nil {
        print("convertedNumber has an integer value of \(convertedNumber!).")
        }
    
        let possibleString: String? = "An optional string."
        let forcedString: String = possibleString! // requires an exclamation mark
    
        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString // no need for an exclamation mark
    
    
        print()
    
        let age = -3
        //        assert(age >= 0, "A person's age cannot be less than zero")
        // this causes the assertion to trigger, because age is not >= 0
    
    
        //        if age > 10 {
        //            print("You can ride the roller-coaster or the ferris wheel.")
        //        } else if age > 0 {
        //            print("You can ride the ferris wheel.")
        //        } else {
        //            assertionFailure("A person's age can't be less than zero.")
        //        }
    
        precondition(age > 0, "Index must be greater than zero.")
    
        fatalError("还没有完成，完成时将我删除！")
    
    }
    
    func Generic()
    {
        
        
        func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Iterator.Element]
            where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
                var commonElements = [T.Iterator.Element]()
                for lhsItem in lhs {
                    for rhsItem in rhs {
                        if lhsItem == rhsItem {
//                            return true
                            commonElements.append(lhsItem)
                        }
                    }
                }
                return commonElements
        }
        print(anyCommonElements([1, 2, 3], [3, 1]))
        
        
    }
    
    func errorFunc(){
        
        enum PrinterError: Error
        {
            case outOfPaper
            case noToner
            case onFire
        }
        
        enum PrinterError2: Error
        {
            case outOfPaper
            case noToner
            case onFire
            case onFireZzz
        }
        
        func send(job: Int, toPrinter printerName: String) throws -> String {
            if printerName == "Never Has Toner" {
                throw PrinterError.noToner
            }
            else if printerName == "onFire" {
                throw PrinterError.onFire
            }
            else if printerName == "onFireZzz" {
                throw PrinterError2.onFireZzz
            }
            else
            {
                throw PrinterError.outOfPaper
            }
            return "Job sent"
        }
        
        // mothed 1
//        do {
//            let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
//            print(printerResponse)
//        } catch {
//            print(error)
//        }
        
        do {
            let printerResponse = try send(job: 1440, toPrinter: "Never Has Toner")
            print(printerResponse)
        } catch PrinterError.onFire {
            print("I'll just put this over here, with the rest of the fire.")
        } catch let printerError as PrinterError {
            print("Printer error: \(printerError).")
        } catch {
            print(error)
        }
        
        
        let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
        let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")
        
        print()
        
        
        var fridgeIsOpen = false
        let fridgeContent = ["milk", "eggs", "leftovers"]
        
        func fridgeContains(_ food: String) -> Bool {
            fridgeIsOpen = true
            defer {
                fridgeIsOpen = false
            }
            
            let result = fridgeContent.contains(food)
            return result
        }
        fridgeContains("banana")
        print(fridgeIsOpen)
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
        
        print()
        
        enum DateStr:Int, ExampleProtocol
        {
            case monday = 1
            case tuesday, wednesday, thursday, friday, saturday, sunday
            
            var simpleDescription: String
            {
                get{
                    switch self {
                    case .monday:
                        return "monday"
                    default:
                        return String(self.rawValue)
                    }
                }
            }
            
            mutating func adjust() {
                switch self {
                case let .friday:
                    self = .friday
                    // 其它的都变成monday
                default:
                    self = .monday
                }
            }
            
        }
        
        var monday = DateStr.monday
        print(monday.simpleDescription)
        monday.adjust()
        print(monday.simpleDescription)
        
        
        var friday = DateStr.friday
        print(friday.simpleDescription)
        friday.adjust()
        print(friday.simpleDescription)
        
        var tuesday = DateStr.tuesday
        print(tuesday.simpleDescription)
        tuesday.adjust()
        print(tuesday.simpleDescription)
        
        
        print()
        
        print(7.simpleDescription)
        
        var num = 7
        num.adjust()
        print(num.simpleDescription)
        
        print()
        
        var myDoubleValue = -10.4
        myDoubleValue.absoluteValue()
        print(myDoubleValue)
        
        var myDoubleValue2 = 21.4
        myDoubleValue2.absoluteValue()
        print(myDoubleValue2)
        
        
        let protocolValue: ExampleProtocol = a
        print(protocolValue.simpleDescription)
//         print(protocolValue.anotherProperty) // Uncomment to see the error
        
        
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


