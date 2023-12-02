//
//  ContentView.swift
//  cal eva
//
//  Created by shimaila mansoor on 11/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Wrap everything inside NavigationStack for navigation capabilities
        NavigationStack {
            VStack {
                Image("Screenshot 2023-11-22 at 6.08.44 PM")
                    .imageScale(.small)
                    .foregroundStyle(.tint)
                    .cornerRadius(20)
                    .position(x: 200, y: 200)

                Text("Welcome to Cal Eva")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .bold().font(.title2).italic()
                    .position(x: 190, y: 60)

                // NavigationLink to navigate to CourseSelectionPage
                NavigationLink(destination: CourseSelectionPage()) {
                    Text("Press here to get started")
                        .font(.title)
                        .foregroundColor(.blue)
                }
                .padding()
            }
        }
    }
}
#Preview {
    ContentView()
}
