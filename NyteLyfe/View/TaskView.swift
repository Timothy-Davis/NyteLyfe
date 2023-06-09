import SwiftUI

struct TaskView: View {
    @State var currentTheme:Theme = themes[ThemeName.darkTheme.rawValue]
    @State var exampleTag1 = "Email"
    @State var exampleTag2 = "Design Team"
    @State var exampleColor1 = Color(hex: 0xffaa00)
    @State var exampleColor2 = Color(hex: 0xAA77AA)
    
    @Binding var taskTitle: String
    
    var body: some View {
            HStack {
                Image("DueSoonCircle")
                
                VStack {
                    Text(taskTitle)
                        .foregroundColor(currentTheme.textColor)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.caption)
                    Text("Due in 2 hours")
                        .foregroundColor(Color(hex: 0xFFFF00))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.caption)
                    
                }
                
                VStack {
                    HStack {
                        Circle()
                            .foregroundColor(Color(hex: 0x7AABF8))
                            .frame(width: 5)
                        Text("Application Redesign")
                            .foregroundColor(Color(hex: 0x7AABF8))
                            .font(.caption)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                    
                    HStack {
                        TagView(tagContent: $exampleTag1, tagColor: $exampleColor1)
                        TagView(tagContent: $exampleTag2, tagColor: $exampleColor2)
                    }
                    .frame(maxWidth: .infinity, alignment: .bottomTrailing)
                }
            }
            .padding(5)
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(currentTheme.primaryColor)
            )
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(taskTitle: .constant("do thing"))
    }
}
