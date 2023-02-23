////MARK: EXRCISE
////Class
////1) Create a swift program to demonstrate swift class. Which has two variables inside
////class body. Access (Set its values and get its value.) these variables by creating one
////instance of class.
//class SwiftClass {
//    var languageName: String
//    var languageID: Int
//    init(lname: String, lID: Int) {
//        self.languageName  = lname
//        self.languageID = lID
//    }
//}
//var XcodeLanguage = SwiftClass(lname: "Swift", lID: 10)
//XcodeLanguage
//
////2) Create a swift program to demonstrate usage of swift class for usage of multiple
////initializers. Create one initializer with two parameters your name and college and
////another initializer with your name and department. You can be able to access these
////properties using instance of class.
//class University {
//    var name: String
//    var college: String
//    var department: String
//
//    init(name: String, college: String) {
//        self.name = name
//        self.college = college
//        department = ""
//    }
//    convenience init(name: String, department: String) {
//        self.init(name: name, college: "")
//        self.department = department
//    }
//}
//
//var charusat = University(name: "parth", college: "CMPICA")
//var CMPICA = University(name: "parth", department: "MCA")
//charusat
//CMPICA
//
////3) Create a swift class without initializers and access (write, read) its properties using
////instance of class.
//class NewCard {
//    var cardID: Int?
//    var cardName: String?
//}
//
//var AdharCard = NewCard()
//AdharCard.cardID = 10
//AdharCard.cardName = "RUPAY"
//
////4) Create a swift class which is having code to return square of given number and
////access this code using class instance.
//class NumberSquare {
//    var Number: Int {
//        get {
//            return self.Number * self.Number
//        }
//        set {
//            self.Number = newValue
//        }
//    }
//}
//var getSquare = NumberSquare()
////getSquare.Number = 10
//
////5) Create a swift class example to show use of swift inheritance. Your base class has
////some property access this property. In two different child classes and show its usage
////using the instances of both child classes.
//class BaseClass {
//    var name: String
//    var ID: Int
//
//    init(name: String, ID: Int) {
//        self.name = name
//        self.ID = ID
//    }
//}
//class AClass: BaseClass {
//    var username: String
//    init(name: String, ID: Int, userName: String) {
//        self.username = userName
//        super.init(name: name, ID: ID)
//    }
//}
//class BClass: BaseClass {
//    var uID: Int
//    init(name: String, ID: Int, uID: Int) {
//        self.uID = uID
//        super.init(name: name, ID: ID)
//    }
//}
//var getUserDetails = BClass(name: "Parth", ID: 10, uID: 20)
////6) Create a swift class example to show use of swift base class which have some
////implementation inside any method. Now demonstrate usage of overriding that
////method implementation.
//class Car {
//    func printName() {
//        print("car class has printName method")
//    }
//}
//class Toyota: Car {
//    override func printName() {
//        print("Toyota class has printName method")
//    }
//}
//
//var myCar = Toyota()
//myCar.printName()
////7) Create a swift class with an initializer in a manner that you can create this class using
////initializing value. And one function which takes int input and returns the power of
////class instance.
////example: let instance = Example(value: 5)
////let result = instance.doPower(power: 3)
////then it should return 5&#39;s 3 power (125)
//class MathFunctions {
//    var numberValue: Int
//
//    init(numberValue: Int) {
//        self.numberValue = numberValue
//    }
//    func doPower(power: Int) -> Int {
//        var sum = 0
//         if numberValue > 0 {
//
//             sum += numberValue * (doPower(power: power - 1))
//         }
//         return power
//    }
//}
//
//var numbertoCalculate = MathFunctions(numberValue: 5)
//numbertoCalculate.doPower(power: 3)
//
////Create a swift class example which has a parent class for vehicles, and child classes
////for two different vehicles e.g. (bike &amp; car). You need to use common properties and
////method in the parent class and inside child class, there will be some different
////property which is not common.
//
//
////9) Create a person swift class with person name initializer and create one function to
////greet that person.
////Example: let person1 = Person(name: Joe)
////Person1.greet() // This should print “Hello Joe”
//
////ENUMERATIONS
//
////Write swift program using enumerations to check week day from given number.
////Consider Monday as 1 and Sunday as 7. We can be able to get day name as string in
////short form (sun, mon,...) and same full name (Sunday, Monday...) by given number
////of the day.
////Example. It should return Monday or mon if I pass parameter 1 for get day name.
//
//enum weekdays {
//    case sunday,monday,tuesday,wednesaday,thursday,friday,saturday
//}
//
//let today = weekdays.monday
//
//switch today {
//case .monday:
//     print("it is monday")
//case .sunday:
//    <#code#>
//case .tuesday:
//    <#code#>
//case .wednesaday:
//    <#code#>
//case .thursday:
//    <#code#>
//case .friday:
//    <#code#>
//case .saturday:
//    <#code#>
//}
//
////
////Create one enumeration program to return number of days in a month.
//
//enum month {
//  case jan,feb,march,april,may,june,july,august,sep,oct,nov,dec
//}
//
//let currentMonth = month.april
//
//switch currentMonth {
//case .jan,.feb,.march,.april,.june,.sep,.oct:
//    print("30 days")
//case .may,.august,.dec,.july,.nov:
//    print("31 days")
//}
//
//////
////7) Write a swift program using enumerations for learn and demonsrate enum cases with
////parameters (Enum with associated values).
//
//enum Mercedes {
//
// case sedan(height: Double)
// case suv(height: Double)
// case roadster(height: Double)
//}
//
//var choice = Mercedes.suv(height: 5.4)
//
//switch(choice) {
// case let .sedan(height):
//   print("Height:", height)
//
// case let .suv(height):
//   print("Height:", height)
//
// case let .roadster(height):
//   print("Height:", height)
//}
//
////PRACTICE

@propertyWrapper
struct SmallNumber {
    private var number: Int
    private(set) var projectedValue: Bool

    var wrappedValue: Int {
        get { return number }
        set {
            if newValue > 12 {
                number = 12
                projectedValue = true
            } else {
                number = newValue
                projectedValue = false
            }
        }
    }

    init() {
        self.number = 0
        self.projectedValue = false
    }
}
struct SomeStructure {
    @SmallNumber var someNumber: Int
}
var someStructure = SomeStructure()

someStructure.someNumber = 4
print(someStructure.$someNumber)
// Prints "false"

someStructure.someNumber = 55
print(someStructure.$someNumber)


