//
//  TestView.swift
//  Frostbreak
//
//  Created by Jose julian Lopez on 03/04/25.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedTab: Tab = .eye
    
    enum Tab {
        case eye
        case body
    }
    
    var body: some View {
        VStack {
            CustomTabBar(selectedTab: $selectedTab)
            if selectedTab == .eye {
                ScrollView1()
            } else {
                ScrollView2()
            }
            Spacer()
        }
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: ContentView.Tab
    
    var body: some View {
        HStack {
            Button(action: {
                selectedTab = .eye
            }) {
                Text("Eye")
                    .font(.headline)
                    .foregroundColor(selectedTab == .eye ? .white : .gray)
                    .padding()
                    .background(selectedTab == .eye ? Color.gray.opacity(0.5) : Color.clear)
                    .cornerRadius(15)
            }
            
            Button(action: {
                selectedTab = .body
            }) {
                Text("Body")
                    .font(.headline)
                    .foregroundColor(selectedTab == .body ? .white : .gray)
                    .padding()
                    .background(selectedTab == .body ? Color.gray.opacity(0.5) : Color.clear)
                    .cornerRadius(15)
            }
        }
        .padding()
        .background(Color.black.opacity(0.8))
        .cornerRadius(20)
    }
}

struct ScrollView1: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0..<10) { index in
                    HStack {
                        Image(systemName: "eye.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                        VStack(alignment: .leading) {
                            Text("Ejercicio 20 20")
                                .font(.headline)
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit.")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                    }
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationTitle("Ejercicios")
    }
}

struct ScrollView2: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0..<10) { index in
                    HStack {
                        Image(systemName: "figure.walk")
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                        VStack(alignment: .leading) {
                            Text("Ejercicio 20 20")
                                .font(.headline)
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit.")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                    }
                    .padding()
                    .background(Color.purple.opacity(0.1))
                    .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationTitle("Ejercicios")
    }
}


#Preview {
    ContentView()
}
