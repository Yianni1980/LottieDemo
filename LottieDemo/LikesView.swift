//
//  LikesView.swift
//  LottieDemo
//
//  Created by ioannis on 18/12/23.
//

import SwiftUI

struct LikesView: View {
    @State private var myPosts: [LikePost] = LikePost.sampleData
    var body: some View {
        NavigationStack {
            List {
                ForEach($myPosts ){ $post in
                    VStack(alignment: .leading){
                        Text(post.text)
                        HStack {
                            Spacer()
                            Button {
                                withAnimation {
                                    post.isLiked.toggle()
                                }
                            } label: {
                                Image(systemName: post.isLiked ? "heart.fill" : "heart")
                                    .foregroundColor(.red)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Posts")
        }
    }
}
#Preview {
    LikesView()
}
