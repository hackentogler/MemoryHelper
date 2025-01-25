//
//  ContentView.swift
//  MemoryHelper
//
//  Created by Jeffrey Hougentogler on 1/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LockerView()
                .tabItem {
                    Image(systemName: "lock")
                    Text("Locker")
                }

            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }

            CollectionsView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Collections")
                }

            AddVersesView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Add")
                }
        }
    }
}

#Preview {
    ContentView()
}
