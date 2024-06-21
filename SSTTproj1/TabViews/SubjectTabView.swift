//
//  SubjectTabView.swift
//  SSTTproj1
//
//  Created by Oleksii Miroshnyk on 20.06.2024.
//

import SwiftUI

struct SubjectTabView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        ZStack {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image("drone_image")
                        .resizable()
                        .scaledToFit()
                        .frame(height: screenWidth * 0.7)
                        .opacity(0.2)
                }
            }
            ScrollView {
                VStack(alignment: .leading) {
                    Text("PHD Thesis")
                        .font(.title)
                    Button(action: {
                        selectedTab = 2
                    }) {
                        Text("Discover about author")
                            .font(.subheadline)
                            .padding(.bottom)
                            .foregroundColor(.blue)
                    }
                    Text(thesisModel.title)
                        .font(.title)
                        .padding(.bottom)
                    
                    Text("Summary")
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    Text(thesisModel.summary)
                        .padding(.bottom)
                }
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
