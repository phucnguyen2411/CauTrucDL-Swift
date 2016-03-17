



//Exchange Sort
//Bubble Sort- Phuong phap noi bot

func swap(var a:Int , var b: Int) {
    let temp = a
    a = b
    b = temp
}


func bubbleSort(var A:[Int]) -> [Int]{
    for var i:Int = 0; i < A.count ; i++ {
        for var j:Int = A.count - 1 ; j > i ; j-- {
            if A[j] < A[j-1] {
                swap(&A[j], &A[j-1])
            }
            
        }
    }
    return A
}

var mangA:[Int] = [1,4,6,3,1,4365,2,5,7,2,4]
mangA = bubbleSort(mangA)
for value in mangA{
    print(value)
}