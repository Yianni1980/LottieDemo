//
//  LikePost.swift
//  LottieDemo
//
//  Created by ioannis on 18/12/23.
//

import Foundation
struct LikePost: Identifiable {
    var id = UUID()
    var text: String
    var isLiked: Bool = false
    
    static var sampleData: [LikePost] {
        [
            LikePost(text: "Laborum non expedita expedita atque quidem."),
            LikePost(text: "Recusandae nam est illo et occaecati iste ex repellat.", isLiked: true),
            LikePost(text: "Id molestiae ut veniam iste expedita non autem deserunt numquam."),
            LikePost(text: "Quas ullam error quidem suscipit magni."),
            LikePost(text: "Delectus eligendi similique accusamus."),
            LikePost(text: "Voluptas eius voluptatum et quos sit deserunt eligendi."),
            LikePost(text: "Consectetur nostrum accusantium qui excepturi quos recusandae numquam."),
            LikePost(text: "Ut repudiandae nesciunt maxime aut eos sint est."),
            LikePost(text: "In dolore ducimus assumenda cumque tenetur nostrum iusto.", isLiked: true),
            LikePost(text: "Molestias et blanditiis ad blanditiis sequi ipsa accusamus."),
            LikePost(text: "Dolores et in voluptatum modi doloribus quia et."),
            LikePost(text: "Recusandae in expedita rerum eum sunt eos sed."),
            LikePost(text: "Eligendi et enim quod laudantium minus quibusdam molestias iste.", isLiked: true),
            LikePost(text: "Optio ullam neque soluta ullam sint possimus unde necessitatibus voluptates."),
            LikePost(text: "Assumenda omnis est qui eos suscipit doloribus ut.")
        ]
    }
}
