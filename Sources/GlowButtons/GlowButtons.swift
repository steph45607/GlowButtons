// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

internal struct GButton: View{
    public var body: some View{
        VStack{
            HStack{
                Image(systemName: "heart")
                Text("Hearts")
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
    GButton()
}
