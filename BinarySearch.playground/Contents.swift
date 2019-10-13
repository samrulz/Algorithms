//Binary Search
import UIKit

func binarySearch(list:[Int],item:Int) -> Int {

    var lowIndex = 0 // lowest index of the array
    var highIndex = list.count - 1 // highest index of the array

    if !list.contains(item) {
        print("\(item) is not in the array")
        return 0
    }

    while lowIndex <= highIndex {
        
        let mid = (lowIndex + highIndex) / 2 // middle of the array
        let guess = list[mid] // position of the array value
        
        if guess == item { // if guess equal
            return mid
        }else if guess > item { // if guess high
            highIndex = mid - 1
        }else { // if guess low
            lowIndex = mid + 1
            
        }
    }
    return 0
}

print("Element found on index: ",binarySearch(list: [0,1,3,5,7,9,10], item: 0))


func binarySearch<T:Comparable>(inputArr:Array<T>, searchItem: T) -> Int? {
    var lowerIndex = 0;
    var upperIndex = inputArr.count - 1

    while (true) {
        let currentIndex = (lowerIndex + upperIndex)/2
        if(inputArr[currentIndex] == searchItem) {
            return currentIndex
        } else if (lowerIndex > upperIndex) {
            return nil
        } else {
            if (inputArr[currentIndex] > searchItem) {
                upperIndex = currentIndex - 1
            } else {
                lowerIndex = currentIndex + 1
            }
        }
    }
}

var myArray = [0,1,3,5,7,9,10]//[1,2,3,4,5,6,7,9,10];
if let searchIndex = binarySearch(inputArr: myArray,searchItem: 0){
    print("Element found on index: \(searchIndex)");
}


let numbers = [1, 4, 6, 7, 10, 12, 18, 19, 23, 24, 34, 44, 58, 65]


func binarySearch(array: [Int], key: Int) -> Bool {
    
    if array.count == 0 { return false }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midValue = array[midIndex]
    
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) is not in the array")
        return false
    }
    
    if key > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: slice, key: key)
    }
    
    if key < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: slice, key: key)
    }
    
    if key == midValue {
        print("\(key) found in the array")
        return true
    }
    
    return false
}

binarySearch(array: numbers, key: 11)


