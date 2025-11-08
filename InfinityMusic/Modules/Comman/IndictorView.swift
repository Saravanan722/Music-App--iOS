//
//  IndictorView.swift
//  InfinityMusic
//
//  Created by Saravanan T on 29/10/24.
//

import SwiftUI

struct IndictorView<Item: View>: View {
    private let range: Range<Int>
    private let normal: () -> Item
    private let higlight: () -> Item

    @Binding private var selection: Int

    init(
        _ range: Range<Int>,
        selection: Binding<Int>,
        @ViewBuilder normal: @escaping () -> Item,
        @ViewBuilder higlight: @escaping () -> Item
    ) {
        self.range = range
        self.normal = normal
        self.higlight = higlight
        _selection = selection
    }

    var body: some View {
        HStack {
            ForEach(range, id: \.self) { index in
                HStack {
                    selection == index ? higlight() : normal()
                }
                .onTapGesture {
                    selection = index
                }
            }
            .animation(.default, value: selection)
        }
    }
}

struct ContentView: View {
    var text = "Kotlin is a statically typed, object-oriented programming language that is interoperable with the Java virtual machine (JVM), Java Class Libraries and Android. The Kotlin programming language was originally designed to improve the Java programming language and is often used in conjunction with Java. Kotlin is a statically typed, object-oriented programming language that is interoperable with the Java virtual machine (JVM), Java Class Libraries and Android. The Kotlin programming language was originally designed to improve the Java programming language and is often used in conjunction with Java."
    
    @State private var lines = 2.0
    
    var body: some View {
        ScrollView {
            ReadMore(lineLimit: Int(lines)) {
                Text(text)
            }
            .padding()
        }
        .safeAreaInset(edge: .bottom, spacing: 0) {
            VStack {
                GroupBox {
                    Slider(value: $lines, in: 1...24, step: 1)
                } label: {
                    LabeledContent {
                        Text(Int(lines), format: .number)
                    } label: {
                        Text("Lines")
                    }
                    
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ReadMore<Content: View>: View {
    let lineLimit: Int
    
    @ViewBuilder var content: Content
    
    @State private var isExpanded: Bool = false
    
    var body: some View {
        ReadMoreLayout {
            ViewThatFits(in: .vertical) {
                if !isExpanded {
                    fullView
                }
                
                shortView
            }
        }
    }
    
    var fullView: some View {
        content
            .frame(maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
    }
    
    var shortView: some View {
        VStack(alignment: .leading) {
            ZStack {
                content
                    .lineLimit(isExpanded ? nil : max(1, lineLimit))
                    .contentTransition(.opacity)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .onTapGesture {
                withAnimation {
                    isExpanded.toggle()
                }
            }
            .clipped()
            
            Button {
                withAnimation {
                    isExpanded.toggle()
                }
            } label: {
                HStack(spacing: 2) {
                    withSymbolTransition {
                        Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                            .imageScale(.small)
                            .symbolVariant(.circle.fill)
                            .foregroundStyle(.red)
                            .symbolRenderingMode(.hierarchical)
                    }
                    .backportGeometryGroup()
                    
                    Text(isExpanded ? "less" : "read more")
                        .foregroundStyle(.red)
                }
            }
            .backportGeometryGroup()
        }
        .fixedSize(horizontal: false, vertical: true)
    }
    
    @ViewBuilder func withSymbolTransition(@ViewBuilder image: () -> some View) -> some View {
        if #available(iOS 17.0, *) {
            image()
                .contentTransition(.symbolEffect(.replace.wholeSymbol.offUp))
        } else {
            image()
        }
    }
}

private struct ReadMoreLayout: Layout {
    typealias Cache = Void
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout Cache) -> CGSize {
        guard let view = subviews.first else {
            return proposal.replacingUnspecifiedDimensions()
        }
        
        let expanded = view.sizeThatFits(
            .init(
                width: proposal.replacingUnspecifiedDimensions().width,
                height: nil
            )
        )
        let collapsed = view.sizeThatFits(
            .init(
                width: proposal.replacingUnspecifiedDimensions().width,
                height: .zero
            )
        )
        
        if expanded.height <= collapsed.height {
            return expanded
        } else {
            return collapsed
        }
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout Cache) {
        let size = sizeThatFits(proposal: proposal, subviews: subviews, cache: &cache)
        subviews.first?.place(
            at: .init(x: bounds.midX, y: bounds.midY),
            anchor: .center,
            proposal: .init(width: size.width, height: size.height)
        )
    }
}

extension View {
    @ViewBuilder public func backportGeometryGroup() -> some View {
        if #available(iOS 17, *) {
            geometryGroup()
        } else {
            transformEffect(.identity)
        }
    }
}
