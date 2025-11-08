//
//  DataCardView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 15/11/24.
//

import SwiftUI

struct DataCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("SwiftUI is the best way to build apps across Apple platforms. Discover new capabilities to customize the look and feel of your apps, as well as improved interoperability with UIKit and AppKit when building animations and gestures.")
            
            Text("Swift is the programming language used for building the logic and functionality of your applications, while SwiftUI is a framework for building user interfaces in a declarative manner. You can use them together, with Swift providing the backend logic and SwiftUI handling the frontend user interface.")
            
            Text("SwiftUI is the best way to build apps across Apple platforms. Discover new capabilities to customize the look and feel of your apps, as well as improved interoperability with UIKit and AppKit when building animations and gestures.")
            
            Text("Swift is the programming language used for building the logic and functionality of your applications, while SwiftUI is a framework for building user interfaces in a declarative manner. You can use them together, with Swift providing the backend logic and SwiftUI handling the frontend user interface.")
            
            Text("SwiftUI is the best way to build apps across Apple platforms. Discover new capabilities to customize the look and feel of your apps, as well as improved interoperability with UIKit and AppKit when building animations and gestures.")
            
            Text("Swift is the programming language used for building the logic and functionality of your applications, while SwiftUI is a framework for building user interfaces in a declarative manner. You can use them together, with Swift providing the backend logic and SwiftUI handling the frontend user interface.")
            
            Text("SwiftUI is a declarative framework for building user interfaces for iOS, iPadOS, watchOS, tvOS, visionOS and macOS, developed by Apple Inc. for the Swift programming language.")
            
            Text("SwiftUI is a declarative framework for building user interfaces for iOS, iPadOS, watchOS, tvOS, visionOS and macOS, developed by Apple Inc. for the Swift programming language.")
            Text("SwiftUI is a declarative framework for building user interfaces for iOS, iPadOS, watchOS, tvOS, visionOS and macOS, developed by Apple Inc. for the Swift programming language.")
        }
        .lineSpacing(6)
        .privacySensitive(true)
//        .redacted(reason: .privacy)
    }
}

#Preview {
    DataCardView()
}
