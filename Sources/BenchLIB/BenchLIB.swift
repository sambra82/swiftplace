public func benchmark_lib_noTiming(){
    var sum:Double=0
    var w1:Double = 2  //flipping between 1 and 2!
    var w2:Double = 0
    var w3:Double = 0
    for i in 0...10000000 {  //10000000
        w1 = powl(-1,Double(i+1))
        w2 = Double((2*i) - 1)
        w3 = w1/w2
        sum += w3
    }
}

public func benchmark_fast_noTiming(){
    var sum:Double=0
    var w1:Double = 2  //flipping between 1 and 2
    var w2:Double = 0
    var w3:Double = 0
    for i in 0...10000000 {  //10000000
        w1 = 3-w1
        (w2 = Double((2*i) - 1))
        (w3 = Double((w1-2)/w2))
        (sum += w3)
    }
}