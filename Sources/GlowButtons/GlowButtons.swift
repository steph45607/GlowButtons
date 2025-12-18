// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

struct GlowButton: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "heart")
                Text("Heart")
            }
        }
        .padding()
        .cornerRadius(50)
        .overlay(
            RoundedRectangle(cornerRadius: 50)
                .stroke(.red)
                .shadow(color: .red, radius: 2)
        )
    }
}

#Preview {
    GlowButton()
    GlowButton()
    GlowButton()
    GlowButton()
}
