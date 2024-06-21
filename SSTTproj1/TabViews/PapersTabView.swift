//
//  PapersTabView.swift
//  SSTTproj1
//
//  Created by Oleksii Miroshnyk on 20.06.2024.
//

import SwiftUI

struct PapersTabView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("List of papers I'll probably use in my work")
                    .font(.headline)
                    .padding(.top)
                List {
                    ForEach(papers, id: \.self) { paper in
                        NavigationLink(destination: PaperContentView(paper: paper)) {
                            Text(paper.title)
                        }
                    }
                }
                .navigationTitle("Papers")
            }
        }
    }
}

#Preview {
    ContentView()
}
