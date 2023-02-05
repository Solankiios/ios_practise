func funcWithParam(_ no1: Int = 10,_ no2: Int = 20,_ no3: Int = 30) -> (Int,Int) {
    let total = no1 + no2 + no3
    let minus = no1 - no2 - no3
    return (total,minus)
}


funcWithParam(10,50)

func veriadicParam(_ numbers: [Int]...) -> Int {
    let totalofnumbers = numbers.flatMap{ $0 }.reduce(0, +)
    return totalofnumbers
}

veriadicParam([10,20,30,40,50], [10,20,30,40,50])

func totalOfNumbers(_ nums:[Int],_ total: inout Int) -> Int {
    total = nums.reduce(total, +)
    return total
}
var total = 0
totalOfNumbers([1,2,3,4,5,5,6],&total)


//func fnAsParameter(([Int],Int) -> Int, totalscaped: () -> ()) {
//    stotal()
//    totalscaped()
//}
//
//fnAsParameter(stotal: totalOfNumbers([1,2,3,4,5,5,6],&total), {
//    print("this is the result")
//})

func fnAsTrailingAuto(greet: @autoclosure () -> ()) {
    print("this is in scope without trailing")
    greet()
}

fnAsTrailingAuto(greet: print("this was not in scope but in autoclosure"))
