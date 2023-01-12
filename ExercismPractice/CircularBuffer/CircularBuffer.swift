

import Foundation


enum CircularBufferError: Error {
    case bufferEmpty, bufferFull
}

struct CircularBuffer<T>{
    var capacity: Int
    var buffer = [T]()
    var pointer = 0

    init(capacity: Int) {
        self.capacity = capacity
    }

    mutating func write(_ value: T) throws {
        if buffer.count == capacity {
            throw CircularBufferError.bufferFull
        } else {
            pointer += 1
            buffer.append(value)
        }
    }

    mutating func read() throws -> T{
        guard !buffer.isEmpty else {
                 throw CircularBufferError.bufferEmpty
             }
        pointer -= 1
        return buffer.removeFirst()
    }

    mutating func overwrite(_ value: T) {
        if buffer.count < capacity {
              try? write(value)
          } else {
              buffer.removeFirst()
              buffer.append(value)
          }
    }

    mutating func clear() {
        buffer = [T]()
    }
}

