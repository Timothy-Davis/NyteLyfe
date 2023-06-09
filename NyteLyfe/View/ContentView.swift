//
//  ContentView.swift
//  NyteLyfe
//
//  Created by Timothy Davis on 5/28/23.
//

import SwiftUI

struct ContentView: View {
    @State var currentTheme:Theme = themes[ThemeName.darkTheme.rawValue]
    @State var viewName: String = "Inbox"
    @State var task1 = "Call Candidate PM for Project Statue Terrirtory"
    @State var task2 = "Email Terry for New Engineer Interviews"
    @State var task3 = "Do the Laundry"
    @State var task4 = "Contact Jen about the Design Document"
    @State var task5 = "This task name is egregiously long. Who the fuck would actually make a task name this long? They must be trying to limit test my BULLET PROOF UI >:)"
    @State var task6 = "I love you Aaron <3 c:"
    
    var body: some View {
        VStack (spacing: 0) {
            TopBarView(title: self.$viewName)
            ScrollView {
                VStack {
                    Text("Today")
                        .foregroundColor(currentTheme.textColor)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading, .top], 5)
                    
                    VStack {
                        TaskView(taskTitle: $task1)
                        TaskView(taskTitle: $task2)
                        TaskView(taskTitle: $task3)
                    }
                    .padding(.horizontal, 5)
                    
                    Text("Tomorrow")
                        .foregroundColor(currentTheme.textColor)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 5)
                    
                    VStack {
                        TaskView(taskTitle: $task4)
                        TaskView(taskTitle: $task5)
                        TaskView(taskTitle: $task6)
                    }
                    .padding(.horizontal, 5)
                    
                    Spacer()
                }
            }
        }
        .background(currentTheme.backgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
