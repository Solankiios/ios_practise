var mydic: [Int:String] = [3:"this is initial value"]

mydic[1] = "This is my dictionary"
mydic.updateValue("Solanki", forKey:1 )

mydic[2] = "this is 2nd value"
mydic.updateValue("Parth", forKey: 2)

mydic.removeValue(forKey: 2)

mydic.mapValues({
    print($0)
})

mydic.compactMapValues({
    print($0)
})

var valuesofdic = [String]()
mydic.map({
    valuesofdic.append($0.value)
})

valuesofdic

