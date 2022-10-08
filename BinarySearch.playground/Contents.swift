//Binary search - checking on the basis of middle index
func binarySearch(for value: Int, in items: [Int]) -> Int? {
    var left = 0
    var right = items.count - 1
    var mid = 0
   
    while left <= right {
        mid = (left + right) / 2
        
        if items[mid] == value {
            return mid
            
        } else if items[mid] < value {
            left = mid + 1
            
        } else  {
            right = mid - 1
        }
    }
    return nil
}
let array = [1, 3, 6, 7, 9, 11, 121,512, 513] //sorted
let value = 7

if let index = binarySearch(for: value, in: array) {
    print("Index Found: \(index)")
} else {
    print("The searched number: \(value) not in the numbers")
}
