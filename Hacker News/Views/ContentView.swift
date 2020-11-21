//
//  ContentView.swift
//  Hacker News
//
//  Created by Ashwin Singh on 22/08/20.
//  Copyright © 2020 Zedexinfo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){
                post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack{
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
                
            }
            
            .navigationBarTitle("Hacker News").foregroundColor(.black)
            
        }
        
        
        .onAppear {
            self.networkManager.fetchData()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Post: Identifiable{
//   let id: Int
//   let title: String
//}

//let  posts:[Post] = [
//    Post(id: 1, title: "Hello"),
//    Post(id: 2, title: "Hi"),
//    Post(id: 4, title: "testing")
//]
