var printInClosure = { (num: Int) -> Int in
    return num * num
}

printInClosure(2)

var nameInClosure = { (name:String) in
    print("Hello my name is \(name)")
}

nameInClosure("Parth")


func getName(printName:() -> ()) {
    print("this is function body")
    printName()
}

getName(printName: {
    print("this is the closure call in function")
})

func getFullName(name: String,printName: () -> ()) {
   print("name is \(name)")
    printName()
}

getFullName(name: "Parth", printName: {
    print("this is the closure")
})

func autoClosureExample(getPower: @autoclosure () -> ()) {
    getPower()
}

autoClosureExample(getPower: print("solanki parth"))
