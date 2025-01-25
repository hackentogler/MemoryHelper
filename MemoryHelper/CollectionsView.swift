//
//  CollectionsView.swift
//  MemoryHelper
//
//  Created by Jeffrey Hougentogler on 1/25/25.
//

import SwiftUI

struct CollectionsView: View {
    let columns = [
        GridItem(.flexible(minimum: 150), spacing: 20),
        GridItem(.flexible(minimum: 150), spacing: 20),
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("All Collections").font(.largeTitle).padding(5)
                    
                    LazyVGrid(columns: columns, spacing: 10) {
                        Button(action: {
                            print("First button tapped")
                        }) {
                            VStack {
                                Image(systemName: "plus.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.blue)
                                Text("Create Collection")
                                    .font(.caption)
                            }
                        }
                        
                        Button(action: {
                            print("Second button tapped")
                        }) {
                            VStack {
                                Image(systemName: "square.and.arrow.down.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.blue)
                                Text("Download Collections")
                                    .font(.caption)
                            }
                        }
                    }.padding()
                    
                    LazyVGrid(columns: columns) {
                        Button(action: {
                            print("Action 1 tapped")
                        }) {
                            NavigationLink(destination: LockerView()) {
                                VStack {
                                    Image(systemName: "book.closed.fill")
                                        .font(.title)
                                        .foregroundColor(.primary)
                                        .padding(4)
                                    Text("The Peacemakers")
                                        .font(.body)
                                        .foregroundColor(.primary)
                                }
                            }
                            .padding(20)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        
                        Button(action: {
                            print("Action 2 tapped")
                        }) {
                            VStack {
                                Image(systemName: "person.fill")
                                    .font(.title)
                                    .foregroundColor(.primary)
                                    .padding(4)
                                Text("Reading the Bible Together")
                                    .font(.body)
                                    .foregroundColor(.primary)
                            }
                            .padding(20)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                    }
                    .navigationTitle("Collections")
                    .padding()
                }
            }
        }
    }
}

#Preview {
    CollectionsView()
}
