

// Binary Search

func binarySearch<T: Comparable>(_ array: [T], key: T) -> Int? {
    
    var lowerBound = 0
    var upperBound = array.count
    
    while lowerBound < upperBound {
        let middleIndex = lowerBound + (upperBound - lowerBound) / 2
        
        if array[middleIndex] == key {
            return middleIndex
        }else if array[middleIndex] < key {
            lowerBound = middleIndex + 1
        }else {
            upperBound = middleIndex
        }
    }
    return nil
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
binarySearch(numbers, key: 23)
numbers.index(of: 23)
