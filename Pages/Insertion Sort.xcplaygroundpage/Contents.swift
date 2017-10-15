
// Insertion Sort with Swap.At Func

func insertionWithSwap(array: [Int]) -> [Int] {
    //Make copy of Array
    var a = array
    
    for x in 1..<a.count {
        var y = x
        
        while y > 0 && a[y] < a[y - 1] {
            a.swapAt(y - 1, y)
            y -= 1
        }
    }
    return a
}

let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
insertionWithSwap(array: list)


//Insertion sort without Swap Function

func insertionWithoutSwap(array: [Int]) -> [Int] {
    
    //Make a copy of array
    var a = array
    
    for x in 1..<a.count {
        var y = x
        let temp = a[y]
        
        while y > 0 && temp  < a[y - 1] {
            a[y] = a[y - 1]
            y -= 1
        }
        a[y] = temp
    }
    return a
}

insertionWithoutSwap(array: list)

// Insertion Sort Generic Type

func insertionGenericType<T>(_ array: [T], _ isOrderedOn: (T, T) -> Bool) -> [T]{
    
    var a = array
    
    for x in 1..<a.count {
        var y = x
        let temp = a[y]
        
        while y > 0 && isOrderedOn(temp, a[y - 1]) {
            a[y] = a[y - 1]
            y -= 1
        }
        a[y] = temp
    }
    return a
}

insertionGenericType(list, <)
insertionGenericType(list, >)












