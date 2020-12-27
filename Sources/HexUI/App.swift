#if canImport(SwiftUI)

import SwiftUI

public typealias App = SwiftUI.App

#else

import Foundation

public protocol App {
    
    var body: some Scene
}

extension App {
    public static func main() {
        print("Whoop!")
    }
}

#endif
