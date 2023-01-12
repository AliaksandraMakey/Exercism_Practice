
import Foundation

struct Size {
    var width = 80
    var height = 60
    mutating func resize(newWidth: Int, newHeight: Int) {
        width = newWidth
        height = newHeight
    }
}

struct Position {
    var x = 0
    var y = 0
    mutating func moveTo(newX: Int, newY: Int){
        x = newX
        y = newY
    }
}

class Window {
    var title = "New Window"
    let screenSize = Size(width: 800, height: 600)
    var size = Size()
    var position = Position()
    var contents: String?

    func resize(to: Size) {
        let width = max(1, min(screenSize.width - position.x, to.width))
        let height = max(1, min(screenSize.height - position.y, to.height))
        self.size.resize(newWidth: width, newHeight: height)
    }
    func move(to: Position) {
        let x = max(0, min(screenSize.width - size.width, to.x))
        let y = max(0, min(screenSize.height - size.height, to.y))
        self.position.moveTo(newX: x, newY: y)
    }
    func update(title: String) {
        self.title = title
    }
    func update(text: String?) {
        self.contents = text
    }
    func display() -> String {
        "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? "[This window intentionally left blank]")\n"
    }
}

let mainWindow: Window = {
    var mainWindow = Window()
    mainWindow.resize(to: Size(width: 400, height: 300))
    mainWindow.move(to: Position(x: 100, y: 100))
    mainWindow.update(title: "Main Window")
    mainWindow.update(text: "This is the main window")
    return mainWindow
}()

