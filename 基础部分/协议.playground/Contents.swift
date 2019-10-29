import Cocoa

protocol SomeProtocol {
    var onlyGet : Int { get }
    
    
}

protocol AnotherProtocol {
    static var otherProtocol : Int { get set }
}
