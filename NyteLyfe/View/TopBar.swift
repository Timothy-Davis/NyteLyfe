//
//  TopBar.swift
//  NyteLyfe
//
//  Created by Timothy Davis on 6/9/23.
//

import SwiftUI

// TODO:
struct TopBarView: View {
    @State var currentTheme:Theme = themes[ThemeName.darkTheme.rawValue]
    @Binding var title: String
    
    var body: some View {
        HStack {
            Image("BackArrow")
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(title)
                .foregroundColor(Color.white)
                .font(.title2)
            
            Image("SettingsButton")
                .frame(maxWidth: .infinity, alignment: .trailing)
            
        }
        .frame(maxWidth: .infinity)
        .padding(6)
        .background(currentTheme.accentColor)
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView(title: .constant("Inbox"))
    }
}
