//
//  LockerView.swift
//  MemoryHelper
//
//  Created by Jeffrey Hougentogler on 1/25/25.
//

import SwiftUI

struct LockerView: View {
    @State private var showSortActionSheet = false
    @State private var showFilterActionSheet = false
    @State private var showSelectionButtons = false
    @State private var selectedOption: String = "fake"
    
    var body: some View {
        NavigationView {
                    VStack(alignment: .leading) {
                        // Top buttons
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))], spacing: 10) {
                            Button(action: {
                                print("First button tapped")
                                showSortActionSheet.toggle()
                            }) {
                                VStack {
                                    Image(systemName: "arrow.up.arrow.down.circle.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(.yellow)
                                    Text("Sort")
                                        .font(.caption)
                                }
                            }
                            .actionSheet(isPresented: $showSortActionSheet) {
                                ActionSheet(
                                    title: Text("Sort Verses"),
                                    //message: Text("Choose your order"),
                                    buttons: [
                                        .default(Text("Bible Order \(selectedOption == "Option 1" ? "✓": "")")) {
                                            selectedOption = "Option 1"
                                            print("Sort option 1 selected: \(selectedOption)")
                                        },
                                        .default(Text("Date Added \(selectedOption == "Option 2" ? "✓": "")")) {
                                            selectedOption = "Option 2"
                                            print("Sort option 2 selected: \(selectedOption)")
                                        },
                                        .default(Text("Random \(selectedOption == "Option 3" ? "✓": "")")) {
                                            selectedOption = "Option 3"
                                            print("Sort option 3 selected: \(selectedOption)")
                                        },
                                        .cancel {
                                            print("Cancelled")
                                        }
                                    ]
                                )
                            }

                            Button(action: {
                                print("Second button tapped")
                                showFilterActionSheet.toggle()
                            }) {
                                VStack {
                                    Image(systemName: "magnifyingglass")
                                        .font(.largeTitle)
                                        .foregroundColor(.blue)
                                    Text("Filter")
                                        .font(.caption)
                                }
                            }
                            .actionSheet(isPresented: $showFilterActionSheet) {
                                ActionSheet(
                                    title: Text("Searh / Filter"),
                                    //message: Text("Choose your order"),
                                    buttons: [
                                        .default(Text("Search Verses")) {
                                            print("Search selected")
                                        },
                                        .default(Text("Filter Verses")) {
                                            print("Filter selected")
                                        },
                                        .cancel {
                                            print("Cancelled")
                                        }
                                    ]
                                )
                            }

                            if !showSelectionButtons {
                                Button(action: {
                                    print("Third button tapped")
                                    showSelectionButtons.toggle()
                                }) {
                                    VStack {
                                        Image(systemName: "checkmark")
                                            .font(.largeTitle)
                                            .foregroundColor(.gray)
                                        Text("Select All")
                                            .font(.caption)
                                    }
                                }
                            }
                            
                            if showSelectionButtons {
                                Button(action: {
                                    print("Fourth button tapped")
                                    showSelectionButtons.toggle()
                                }) {
                                    VStack {
                                        Image(systemName: "x.circle.fill")
                                            .font(.largeTitle)
                                            .foregroundColor(.gray)
                                        Text("Unselect All")
                                            .font(.caption)
                                    }
                                }
                                
                                Button(action: {
                                    print("Fifth button tapped")
                                }) {
                                    VStack {
                                        Image(systemName: "trash.fill")
                                            .font(.largeTitle)
                                            .foregroundColor(.gray)
                                        Text("Delete Selected")
                                            .font(.caption)
                                    }
                                }

                                Button(action: {
                                    print("Sixth button tapped")
                                }) {
                                    VStack {
                                        Image(systemName: "speaker.wave.3.fill")
                                            .font(.largeTitle)
                                            .foregroundColor(.gray)
                                        Text("Play Selected")
                                            .font(.caption)
                                    }
                                }

                                Button(action: {
                                    print("Seventh button tapped")
                                }) {
                                    VStack {
                                        Image(systemName: "pencil")
                                            .font(.largeTitle)
                                            .foregroundColor(.gray)
                                        Text("Play Selected")
                                            .font(.caption)
                                    }
                                }
                            }
                        }
                        .padding()

                        // List of ContentViews
                        List(1...5, id: \.self) { index in
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Psalm 119:11 - \(index)")
                                    .font(.headline)
                                Text("I have stored up your word in my heart, that I might not sin against you.")
                                    .font(.body)
                                    .foregroundColor(.secondary)

                                // Row of buttons that wraps
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        print("Action 1 tapped for ContentView \(index)")
                                    }) {
                                        HStack {
                                            Image(systemName: "checkmark")
                                                .font(.title2)
                                                .foregroundColor(.primary)
                                            Text("Practice")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                        }
                                        
                                    }
                                    .buttonStyle(.bordered)
                                    .background(Color.green.opacity(0.4))
                                    .cornerRadius(5)
                                    
                                    Button(action: {
                                        print("Action 2 tapped for ContentView \(index)")
                                    }) {
                                        HStack {
                                            Image(systemName: "pencil")
                                                .font(.title2)
                                                .foregroundColor(.primary)
                                            Text("Edit")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                        }
                                        
                                    }
                                    .buttonStyle(.bordered)
                                    .background(Color.gray.opacity(0.5))
                                    .cornerRadius(5)
                                    Spacer()
                                }
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        print("Action 3 tapped for ContentView \(index)")
                                    }) {
                                        HStack {
                                            Image(systemName: "checkmark.square")
                                                .font(.title2)
                                                .foregroundColor(.primary)
                                            Text("Select")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                        }
                                        
                                    }
                                    .buttonStyle(.bordered)
                                    .background(Color.blue.opacity(0.5))
                                    .cornerRadius(5)
                                    
                                    Button(action: {
                                        print("Action 4 tapped for ContentView \(index)")
                                    }) {
                                        HStack {
                                            Image(systemName: "speaker.wave.2.fill")
                                                .font(.title2)
                                                .foregroundColor(.primary)
                                            Text("Listen")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                        }
                                        
                                    }
                                    .buttonStyle(.bordered)
                                    .background(Color.blue.opacity(0.2))
                                    .cornerRadius(5)
                                    Spacer()
                                }
                            }
                            .padding(.vertical, 20)
                        }
                    }
                    .navigationTitle("Verses")
                    .padding()
                }
    }
}

#Preview {
    LockerView()
}
