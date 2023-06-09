import SwiftUI

struct TagView: View {
    @State var currentTheme:Theme = themes[ThemeName.darkTheme.rawValue]
    @Binding var tagContent: String
    @Binding var tagColor: Color
    
    var body: some View {
        
        Text(tagContent)
            .font(.caption2)
            .bold()
            .frame(alignment: .center)
            .padding(.vertical, 2)
            .padding(.horizontal, 5)
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(tagColor)
            )
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView(tagContent: .constant("test"), tagColor: .constant(Color(hex: 0xAA77AA)))
    }
}
