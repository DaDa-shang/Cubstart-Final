//
//  CourseSelectionPage.swift
//  cal eva
//
//  Created by shimaila mansoor on 11/22/23.
//
import SwiftUI

struct CourseSelectionPage: View {
    @State private var searchText = ""
    let names = ["CS61B", "CS61A", "EECS16B", "ASAM127"]

    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(searchResults, id: \.self) { name in
                        NavigationLink(destination: destinationView(for: name)) {
                            Text(name)
                        }
                    }
                }
            }
            .navigationTitle("Classes")
            .searchable(text: $searchText)
        }
    }

    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }

    @ViewBuilder
    private func destinationView(for course: String) -> some View {
        switch course {
        case "CS61A":
            CS61A()
        case "CS61B":
            CS61B()
        case "EECS16B":
            EECS16B()
        case "ASAM127":
            ASAM127()
        default:
            Text("Course not found")
        }
    }
}

// Preview
struct CourseSelectionPage_Previews: PreviewProvider {
    static var previews: some View {
        CourseSelectionPage()
    }
}
