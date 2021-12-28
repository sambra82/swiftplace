import SwiftUI
import Foundation

func benchmark_local(){
    let t=CFAbsoluteTimeGetCurrent()
    var sum:Double=0
    var w1:Double = 2  //flipping between 1 and 2
    var w2:Double = 0
    var w3:Double = 0
    print("Go \(t)")
    for i in 0...10000000 {  //10000000
        w1 = powl(-1,Double(i+1))
        w2 = Double((2*i) - 1)
        w3 = w1/w2
        sum += w3
    }
    let t2=CFAbsoluteTimeGetCurrent()
    print("Ende: \(t2)")
    print("Zeit: +\(t2-t)")
    print(sum)
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!!")
        }.task {
            print("Task gestartet")
            await benchmark_lib()
            print("View ist fertig")
        }
    }
}
