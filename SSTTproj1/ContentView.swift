//
//  ContentView.swift
//  SSTTproj1
//
//  Created by Oleksii Miroshnyk on 18.06.2024.
//

import SwiftUI

struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            SubjectTabView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Subject")
                }
                .tag(0)
            PapersTabView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Papers")
                }
                .tag(1)
            AuthorTabView()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Author")
                }
                .tag(2)
        }
    }
}

struct MyApp_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
