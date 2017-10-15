

// Linear Search Algorithm

//Linear Search Algorithm start from index 0 to search all over the element in array to find the matching key

func LinearSearch<T: Equatable>(_ array: [T], _ object: T) -> Int? {
    
    for (index,obj) in array.enumerated() where obj == object {
        return index
    }
    return nil
}

let array = [5, 2, 4, 7]
LinearSearch(array,2)
