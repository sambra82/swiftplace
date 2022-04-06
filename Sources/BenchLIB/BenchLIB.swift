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

public func anotherBench(){
    let digitCounts = Array(repeating: 0.0, count: 1000000)
    var digitCounts2 = Array(repeating: 0.0, count: 1000000)
    for i in 0..<digitCounts.count {digitCounts2[i]=digitCounts[i]+2.0}
}