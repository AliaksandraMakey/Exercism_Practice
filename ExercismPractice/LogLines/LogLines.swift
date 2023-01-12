
import Foundation

enum LogLevel: String {
    case trace = "[TRC]"
    case debug =  "[DBG]"
    case info = "[INF]"
    case warning = "[WRN]"
    case error =  "[ERR]"
    case fatal = "[FTL]"
    case unknown

    init(_ notification: String) {
        switch notification {
        case _ where notification.hasPrefix(Self.trace.rawValue) : self = .trace
        case _ where notification.hasPrefix(Self.debug.rawValue) : self = .debug
        case _ where notification.hasPrefix(Self.info.rawValue) : self = .info
        case _ where notification.hasPrefix(Self.warning.rawValue) : self = .warning
        case _ where notification.hasPrefix(Self.error.rawValue) : self = .error
        case _ where notification.hasPrefix(Self.fatal.rawValue) : self = .fatal
        default: self = .unknown
        }
    }
    func shortFormat(message: String) -> String {
        let shortLine: String
        switch self{
        case .trace: shortLine = "0:"
        case .debug: shortLine = "1:"
        case .info: shortLine = "4:"
        case .warning: shortLine = "5:"
        case .error: shortLine = "6:"
        case .fatal: shortLine = "7:"
        case .unknown: shortLine = "42:"
        }
        return shortLine + message
    }
}

