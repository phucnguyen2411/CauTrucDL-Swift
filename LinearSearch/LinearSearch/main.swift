//LinearSearch


func linearSearch(number: [Int], x: Int) -> Int {
    for var i = 0; i < number.count; i++ {
        if( number[i] == x){
            return i
        }
    }
    return -1
    
}

var number = [1, 2, 3, 5, 7, 8, 9, 10]
var x = 7


var kq = linearSearch(number, x: x)
print(kq)
