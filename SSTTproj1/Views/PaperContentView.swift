//
//  PaperContentView.swift
//  SSTTproj1
//
//  Created by Oleksii Miroshnyk on 20.06.2024.
//

import SwiftUI

struct PaperContentView: View {
    var paper: Paper
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(paper.title)
                    .font(.title)
                    .padding(.bottom)
                
                Link("Read More", destination: URL(string: paper.url)!)
                    .padding(.bottom)
                    .foregroundColor(.blue)
                
                Text(paper.idea)
                    .font(.subheadline)
                    .padding(.bottom)
                
                Text(paper.method)
                    .padding(.bottom)
                
                Text("Key Features:")
                    .font(.headline)
                
                ForEach(paper.keyFeatures, id: \.self) { keyFeature in
                    Text(keyFeature)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
