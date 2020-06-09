import Foundation

var width: Float = 1.5
var height: Float = 2.3

var bucketOfPaint: Int {
    get {
        return Int(ceilf((width*height)/1.5))
    }
    
    set {
        print(Double(newValue) * 1.5)
    }
}

bucketOfPaint = 8
