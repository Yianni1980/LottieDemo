//
//  LikesView.swift
//  LottieDemo
//
//  Created by ioannis on 18/12/23.
//

import SwiftUI

struct LikesView: View {
    @State private var myPosts: [LikePost] = LikePost.sampleData
    @State private var play = false
    @State private var selectedPostID  = UUID()
    var body: some View {
        NavigationStack {
            List {
                ForEach($myPosts ){ $post in
                    VStack(alignment: .leading){
                        Text(post.text)
                        HStack {
                            Spacer()
                            Button {
                                if !post.isLiked {
                                    post.isLiked.toggle()
                                    play = true
                                    selectedPostID = post.id
                                } else  {
                                    withAnimation {
                                        post.isLiked.toggle()
                                    }
                                }
                                
                            } label: {
                                Image(systemName: post.isLiked ? "heart.fill" : "heart")
                                    .foregroundColor(.red)
                            }
                            .buttonStyle(.plain)
                            .overlay(alignment:.center) {
                                if selectedPostID == post.id {
                                    LottiePlusView(name: Constants.cascadeLike,
                                    animationSpeed: 4,
                                    contentMode:.scaleAspectFill,
                                                   play: $play)
                                    .frame(width: 50,height: 50)
                                    .allowsHitTesting(false)
                                }
                            }
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
