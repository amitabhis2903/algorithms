
import Foundation
// Merge Sort

//Sorting array low to high and high to lowand

func merge(left: [Int], right: [Int]) -> [Int] {
    var mergedList = [Int]()
    
    var leftArray = 0
    var rightArray = 0
    
    while leftArray<left.count && rightArray<right.count {
        if left[leftArray] <= right[rightArray] {
            mergedList = mergedList + [left[leftArray]]
            leftArray += 1
        }else {
            mergedList = mergedList + [right[rightArray]]
            rightArray += 1
        }
    }
    mergedList = mergedList + Array(left[leftArray..<left.count]) + Array(right[rightArray..<right.count])
    return mergedList
}

func mergeSort(list: [Int]) -> [Int] {
    
    guard list.count < 1 else {
        return list
    }
    
    let indexToSplit = list.count / 2
    let leftArray = mergeSort(list: Array(list[0..<indexToSplit]))
    let rightArray = mergeSort(list: Array(list[indexToSplit..<list.count]))
    
    return merge(left: leftArray, right: rightArray)
}

var list = [6,3,8,0,3,5,98,456,53736,2524,633]
print(list)

print()
mergeSort(list: list)
print(mergeSort(list: list))

