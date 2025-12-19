// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

public struct GlowButtonConfiguration{
    public let text: String
    public let image: String
    
    public let showGlow: Bool
    public let color: Color
    
    public let cornerRadius: CGFloat
    
//    internal init(text: String, image: String, showGlow: Bool, color: Color, cornerRadius: CGFloat) {
//        self.text = text
//        self.image = image
//        self.showGlow = showGlow
//        self.color = color
//        self.cornerRadius = cornerRadius
//    }
    
    public init(text: String = "Heart", image: String = "Heart", showGlow: Bool = true, color: Color = .red, cornerRadius: CGFloat = 10) {
        self.init(
            text: text, image: image, showGlow: showGlow, color: color, cornerRadius: cornerRadius
        )
    }
}

public struct GButton: View{
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


#Preview {
//    GlowButton()
    GButton()
}
