#if canImport(SwiftUI)

import SwiftUI

public typealias WindowGroup = SwiftUI.WindowGroup

#else

import Foundation

public struct WindowGroup: Scene {
    
    public init() {
        
    }
}

#endif
