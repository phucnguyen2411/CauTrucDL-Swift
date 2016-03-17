


//Binary Search


func binarySearch(A:[Int], x: Int) -> Int{
    var l:Int = 0
    var r:Int = A.count - 1
    var m:Int
    
    repeat{
        m = ( l + r )/2
        if ( A[m] == x ){
            return m
        }
        if( x < A[m] ){
            r = m - 1
        }else{
        l = m + 1
        }
    }while(l<=r)
    return -1
}


var mangA:[Int] = [1,4,6,4,2,6,3,2,5,7,4,3,5,7]

var kq:Int = binarySearch(mangA, x: 4)
print(kq)