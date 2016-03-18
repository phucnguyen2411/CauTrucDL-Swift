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


func findPartition(i:Int, j:Int, pivot:Int, A:[Int]) -> [Int]{
    
}