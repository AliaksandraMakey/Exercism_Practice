

import Foundation


func flattenArray<T>(_ list: [Any?]) -> [T] {
    var newList: [T] = []
    flattenArray(list, &newList)
    return newList
}


func flattenArray<T>(_ list:[Any?], _ newList: inout [T]) {
    for element in list {
        if let item = element as? Array<Any> {
            flattenArray(item, &newList)
            continue
        }
        if element != nil {
            newList.append(element as! T)
        }
    }
}
