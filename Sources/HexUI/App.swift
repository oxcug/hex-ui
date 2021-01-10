#if canImport(SwiftUI)

import SwiftUI

public typealias App = SwiftUI.App

#else

import CGtk3
import Foundation

public protocol App {
    
    var body: Scene { get }

    static func main()
}

extension App {
    public static func main() {
        CGtk3.run()
    }
}

#endif
