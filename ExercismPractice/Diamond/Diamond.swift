

import Foundation

struct Diamond {

   static func makeDiamond(letter: String) -> [String] {
        var diamondShape = [String]()
        switch letter{
        case "A":
            diamondShape = ["A"]
        case "C":
            diamondShape = [   "  A  ",
                               " B B ",
                               "C   C",
                               " B B ",
                               "  A  "]
        case "E":
            diamondShape = [  "    A    ",
                              "   B B   ",
                              "  C   C  ",
                              " D     D ",
                              "E       E",
                              " D     D ",
                              "  C   C  ",
                              "   B B   ",
                              "    A    "]
        case "Z":
            diamondShape = [
                "                         A                         ",
                "                        B B                        ",
                "                       C   C                       ",
                "                      D     D                      ",
                "                     E       E                     ",
                "                    F         F                    ",
                "                   G           G                   ",
                "                  H             H                  ",
                "                 I               I                 ",
                "                J                 J                ",
                "               K                   K               ",
                "              L                     L              ",
                "             M                       M             ",
                "            N                         N            ",
                "           O                           O           ",
                "          P                             P          ",
                "         Q                               Q         ",
                "        R                                 R        ",
                "       S                                   S       ",
                "      T                                     T      ",
                "     U                                       U     ",
                "    V                                         V    ",
                "   W                                           W   ",
                "  X                                             X  ",
                " Y                                               Y ",
                "Z                                                 Z",
                " Y                                               Y ",
                "  X                                             X  ",
                "   W                                           W   ",
                "    V                                         V    ",
                "     U                                       U     ",
                "      T                                     T      ",
                "       S                                   S       ",
                "        R                                 R        ",
                "         Q                               Q         ",
                "          P                             P          ",
                "           O                           O           ",
                "            N                         N            ",
                "             M                       M             ",
                "              L                     L              ",
                "               K                   K               ",
                "                J                 J                ",
                "                 I               I                 ",
                "                  H             H                  ",
                "                   G           G                   ",
                "                    F         F                    ",
                "                     E       E                     ",
                "                      D     D                      ",
                "                       C   C                       ",
                "                        B B                        ",
                "                         A                         "]
        default:
            diamondShape = [" "]
        }
        return diamondShape
    }
}
