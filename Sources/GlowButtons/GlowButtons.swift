// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

public struct GlowButtonConfiguration{
    public let text: String
    public let image: String
    
    public let showGlow: Bool
    public let color: Color
    
    public let cornerRadius: CGFloat
    
//    public init(text: String, image: String, showGlow: Bool, color: Color, cornerRadius: CGFloat) {
//        self.text = text
//        self.image = image
//        self.showGlow = showGlow
//        self.color = color
//        self.cornerRadius = cornerRadius
//    }
    
    public init(text: String = "Heart", image: String = "heart", showGlow: Bool = true, color: Color = .red, cornerRadius: CGFloat = 10) {
//        self.init(
//            text: text, image: image, showGlow: showGlow, color: color, cornerRadius: cornerRadius
//        )
        self.text = text
        self.image = image
        self.showGlow = showGlow
        self.color = color
        self.cornerRadius = cornerRadius
    }
}

public struct GButton: View{
    private let config: GlowButtonConfiguration
    public init (config: GlowButtonConfiguration = GlowButtonConfiguration()){
        self.config = config
    }
    public var body: some View{
        VStack{
            HStack{
                Image(systemName: config.image)
                Text(config.text)
            }
        }
        .padding()
        .cornerRadius(config.cornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: config.cornerRadius)
                .stroke(config.color)
                .shadow(color: config.color, radius: 2)
        )
    }
}


#Preview {
//    GlowButton()
    let config = GlowButtonConfiguration(text: "manual", image: "pencil", color: .blue, cornerRadius: 10)
    GButton(config: config)
    GButton()
}
