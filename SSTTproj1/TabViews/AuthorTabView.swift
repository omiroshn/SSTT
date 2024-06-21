//
//  AuthorTabView.swift
//  SSTTproj1
//
//  Created by Oleksii Miroshnyk on 20.06.2024.
//

import SwiftUI

struct AuthorTabView: View {
    
    @State private var showingSafariView = false
    @State private var safariURL = URL(string: authorModel.githubUrl)!
    
    var body: some View {
        ScrollView {
                VStack(alignment: .center) {
                    Image("profile_photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 10)
                        .padding(.top, 20)
                    
                    Text(authorModel.name)
                        .font(.title)
                        .padding(.top, 10)
                    
                    Text(authorModel.position)
                        .font(.subheadline)
                        .padding(.top, 5)
                    Text(authorModel.university)
                        .font(.subheadline)
                    
                    VStack(alignment: .center) {
                        Button(action: {
                            self.safariURL = URL(string: authorModel.githubUrl)!
                            self.showingSafariView = true
                        }) {
                            HStack {
                                EmptyView()
                                Text("GitHub")
                                    .fontWeight(.regular)
                                    .font(.headline)
                                EmptyView()
                            }
                            .frame(width: 100, height: 30)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(10)
                        }
                        
                        Button(action: {
                            self.safariURL = URL(string: authorModel.linkedInUrl)!
                            self.showingSafariView = true
                        }) {
                            HStack {
                                EmptyView()
                                Text("LinkedIn")
                                    .fontWeight(.regular)
                                    .font(.headline)
                                EmptyView()
                            }
                            .frame(width: 100, height: 30)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                        }
                    }
                    .padding(.top, 20)
                    .sheet(isPresented: $showingSafariView) {
                        SafariView(url: self.safariURL)
                    }
                }
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
