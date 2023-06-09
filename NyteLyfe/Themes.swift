import SwiftUI

class Theme:ObservableObject {
    @Published var backgroundColor: Color
    @Published var accentColor: Color
    @Published var primaryColor: Color
    @Published var textColor: Color
    
    init(backgroundColor: Color, accentColor: Color, primaryColor: Color, textColor: Color) {
        self.backgroundColor = backgroundColor
        self.accentColor = accentColor
        self.primaryColor = primaryColor
        self.textColor = textColor
    }
}

var themes: [Theme] = [
    // Dark Mode
    Theme(backgroundColor: Color(hex: 0x1E1E1E),
          accentColor: Color(hex: 0x006769),
          primaryColor: Color(hex: 0x333333),
          textColor: Color(hex: 0xffffff)
    )
]

enum ThemeName: Int {
    case darkTheme = 0
}

// An extention to the color class that allows us to quickly define new colors with their hex value
// TODO: Check to see how/if these inner utility functions get tested, or even if they'll be integrated here
extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0x00ff00) >> 8) / 255.0
        let blue = Double((hex & 0x0000ff) >> 0) / 255.0
        
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}
