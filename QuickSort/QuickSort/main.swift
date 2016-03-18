//
//  main.swift
//  QuickSort
//
//  Created by Phuc .Ng on 3/18/16.
//  Copyright © 2016 com.phucng. All rights reserved.
//

func findPivot(i:Int, j:Int, A:[Int]) -> Int{
    
    if A.count == 1 {
        return -1
    }
    var k:Int = i + 1
    let pivot:Int = A[i]
    
    while k <= j && A[k] == pivot{
        k++
    }
    if k > j{
        return -1
    }
    if A[k] > pivot {
        return k
    }
    else
    {
        return i
    }
}


func findPartition(i:Int, j:Int, pivot:Int, var A:[Int]) -> Int{
    var L:Int = i
    var R:Int = j
    while R < L {
        while A[L] < pivot{
            L++
        }
        while A[R] >= pivot{
            R--
        }
        if ( L < R ){
            swap(&A[L], &A[R])
        }
    
    }
    let partition = L
    return partition
}

func quickSort(i:Int, j:Int, A:[Int]){
    let pivot = findPivot(i, j: j, A: A)
    if pivot == -1{
        return
    }
    let partition:Int = findPartition(i, j: j, pivot: pivot, A: A)
    quickSort(i, j: partition - 1, A: A)
    quickSort(partition, j: j, A: A)
}



//test

var mangA:[Int] = [ 1,3,5,7,5,3,532,2,35,3,2,6]
quickSort(0, j: mangA.count - 1, A: mangA)

