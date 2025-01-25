//
//  HomeView.swift
//  MemoryHelper
//
//  Created by Jeffrey Hougentogler on 1/25/25.
//

import SwiftUI

struct HomeView: View {
    let columns = [
        GridItem(.flexible(minimum: 150), spacing: 20),
        GridItem(.flexible(minimum: 150), spacing: 20),
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("MemoryHelper").font(.largeTitle).padding(5)
                    Text("based on the app by Scripture Memory Fellowship")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(5)
                    Text("Welcome back, Jeffrey!")
                        .padding(5)
                    
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
                                    Text("All Verses")
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
                                Text("Profile")
                                    .font(.body)
                                    .foregroundColor(.primary)
                            }
                            .padding(20)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        
                        Button(action: {
                            print("Action 3 tapped")
                        }) {
                            VStack {
                                Image(systemName: "gearshape.fill")
                                    .font(.title)
                                    .foregroundColor(.primary)
                                    .padding(4)
                                Text("Settings")
                                    .font(.body)
                                    .foregroundColor(.primary)
                            }
                            .padding(20)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        
                        Button(action: {
                            print("Action 4 tapped")
                        }) {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .font(.title)
                                    .foregroundColor(.primary)
                                    .padding(4)
                                Text("Donate")
                                    .font(.body)
                                    .foregroundColor(.primary)
                            }
                            .padding(20)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        
                        Button(action: {
                            print("Action 5 tapped")
                        }) {
                            VStack {
                                Image(systemName: "person.2.fill")
                                    .font(.title)
                                    .foregroundColor(.primary)
                                    .padding(4)
                                Text("Friends")
                                    .font(.body)
                                    .foregroundColor(.primary)
                            }
                            .padding(20)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        
                        Button(action: {
                            print("Action 6 tapped")
                        }) {
                            VStack {
                                Image(systemName: "list.bullet")
                                    .font(.title)
                                    .foregroundColor(.primary)
                                    .padding(4)
                                Text("Leaderboard")
                                    .font(.body)
                                    .foregroundColor(.primary)
                            }
                            .padding(20)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        
                        Button(action: {
                            print("Action 7 tapped")
                        }) {
                            VStack {
                                Image(systemName: "microphone.fill")
                                    .font(.title)
                                    .foregroundColor(.primary)
                                    .padding(4)
                                Text("Podcast")
                                    .font(.body)
                                    .foregroundColor(.primary)
                            }
                            .padding(20)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        
                        Button(action: {
                            print("Action 8 tapped")
                        }) {
                                VStack {
                                    Image(systemName: "newspaper")
                                        .font(.title)
                                        .foregroundColor(.primary)
                                        .padding(4)
                                    Link("Blog", destination: URL(string: "https://scripturememory.com/blog/")!)
                                    .font(.body)
                                    .foregroundColor(.primary)
                                }
                            
                            .padding(20)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        
                        Button(action: {
                            print("Action 9 tapped")
                        }) {
                            VStack {
                                Image(systemName: "person.badge.plus")
                                    .font(.title)
                                    .foregroundColor(.primary)
                                    .padding(4)
                                Text("Family Sharing")
                                    .font(.body)
                                    .foregroundColor(.primary)
                            }
                            .padding(20)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        
                        Button(action: {
                            print("Action 10 tapped")
                        }) {
                            VStack {
                                Image(systemName: "icloud.and.arrow.down.fill")
                                    .font(.title)
                                    .foregroundColor(.primary)
                                    .padding(4)
                                Text("Download")
                                    .font(.body)
                                    .foregroundColor(.primary)
                            }
                            .padding(20)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        
                        Button(action: {
                            print("Action 11 tapped")
                        }) {
                            VStack {
                                Image(systemName: "questionmark.circle")
                                    .font(.title)
                                    .foregroundColor(.primary)
                                    .padding(4)
                                Text("Help")
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
                    
                    
                }
                .navigationTitle("Home")
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
