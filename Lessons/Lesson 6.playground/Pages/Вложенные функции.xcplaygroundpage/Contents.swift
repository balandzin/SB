//: # Lesson 6
//: ### Вложенные функции

let items = [0, 1, 2, 3, 4, 5, 6]

func recursiveBinarySearch(for target: Int, in items: [Int]) -> Int? {
    func recursiveBinarySearch(for target: Int, in items: [Int], firstIndex: Int, lastIndex: Int) -> Int? {
        if firstIndex > lastIndex {
            return nil
        }
        
        // Определяем элемент из середины массива
        let middleIndex = (firstIndex + lastIndex) / 2
        let item = items[middleIndex]
        
        if item == target {
            // Элемент найден
            return middleIndex
        } else if target < item {
            // Поиск по левой половние коллекции
            return recursiveBinarySearch(
                for: target,
                in: items,
                firstIndex: firstIndex,
                lastIndex: middleIndex - 1
            )
        } else {
            // Поиск по правой стороне коллекции
            return recursiveBinarySearch(
                for: target,
                in: items,
                firstIndex: middleIndex + 1,
                lastIndex: lastIndex
            )
        }
    }
    
    return recursiveBinarySearch(
        for: target,
        in: items,
        firstIndex: 0,
        lastIndex: items.count - 1
    )
}

recursiveBinarySearch(for: 5, in: items)

//: [Next](@next)
