#if canImport(SwiftUI)

import SwiftUI

public typealias Scene = SwiftUI.Scene

#else

public protocol Scene {
    
}

#endif
