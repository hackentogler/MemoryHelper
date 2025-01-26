//
//  AddVersesView.swift
//  MemoryHelper
//
//  Created by Jeffrey Hougentogler on 1/25/25.
//

import SwiftUI

struct AddVersesView: View {
    let columns = [
        GridItem(.flexible(minimum: 150), spacing: 20)
    ]
    
    let booksOfTheBible = [
            "Genesis", "Exodus", "Leviticus", "Numbers", "Deuteronomy",
            "Joshua", "Judges", "Ruth", "1 Samuel", "2 Samuel",
            "1 Kings", "2 Kings", "1 Chronicles", "2 Chronicles", "Ezra",
            "Nehemiah", "Esther", "Job", "Psalms", "Proverbs",
            "Ecclesiastes", "Song of Solomon", "Isaiah", "Jeremiah", "Lamentations",
            "Ezekiel", "Daniel", "Hosea", "Joel", "Amos",
            "Obadiah", "Jonah", "Micah", "Nahum", "Habakkuk",
            "Zephaniah", "Haggai", "Zechariah", "Malachi",
            "Matthew", "Mark", "Luke", "John", "Acts",
            "Romans", "1 Corinthians", "2 Corinthians", "Galatians", "Ephesians",
            "Philippians", "Colossians", "1 Thessalonians", "2 Thessalonians", "1 Timothy",
            "2 Timothy", "Titus", "Philemon", "Hebrews", "James",
            "1 Peter", "2 Peter", "1 John", "2 John", "3 John",
            "Jude", "Revelation"
        ]
    
    @State private var searchText = ""
    
    var filteredBooks: [String] {
        if searchText.isEmpty {
            return booksOfTheBible
        } else {
            return booksOfTheBible.filter { $0.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemBackground)
                    .ignoresSafeArea()
                    .onTapGesture {
                        dismissKeyboard()
                    }
                VStack {
                    Button(action: {
                        print("Action 1 tapped")
                    }){
                        HStack {
                            Image(systemName: "magnifyingglass")
                            Text("Verse Finder")
                        }.padding(10)
                    }.buttonStyle(.borderedProminent)
                    .padding(10)
                    
                    // Search TextField
                    TextField("Search books of the Bible", text: $searchText)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding()
                    
                    // Filtered list of books
                    List(filteredBooks, id: \.self) { book in
                        Text(book)
                            .font(.headline)
                            .padding()
                    }
                
                    
                }
                .navigationTitle("Add Verses")
                .padding()
            }
        }
    }
    
    private func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview {
    AddVersesView()
}
