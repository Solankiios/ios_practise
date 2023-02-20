protocol FullNameable {
 var fullName: String { get }
}

//First Implementation
struct Lecturer: FullNameable {
  var fullName: String
}

let lecturer = Lecturer(fullName: "Gift")

//Second Implementation
struct Student: FullNameable {
  let firstName: String
  let middleName: String
  let lastName: String
  
  var fullName: String {
    return "\(firstName) \(middleName) \(lastName)"
  }
}

let me = Student(firstName: "Abel", middleName: "Agoi", lastName: "Adeyemi")

protocol daysofaweek {
   mutating func print()
}

enum days: daysofaweek {
   case sun, mon, tue, wed, thurs, fri, sat
   mutating func print() {
      switch self {
         case sun:
            self = sun
            print("Sunday")
         case mon:
            self = mon
            print("Monday")
         case tue:
            self = tue
            print("Tuesday")
         case wed:
            self = wed
            print("Wednesday")
         case mon:
            self = thurs
            print("Thursday")
         case tue:
            self = fri
            print("Friday")
         case sat:
            self = sat
            print("Saturday")
         default:
            print("NO Such Da   y")
      }
   }
}

var res = days.wed
res.print()

