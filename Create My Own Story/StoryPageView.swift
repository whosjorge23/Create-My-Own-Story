//
//  StoryPageView.swift
//  Create My Own Story
//
//  Created by Giorgio Giannotta on 24/09/22.
//

import SwiftUI

struct StoryPageView: View {

    let story: Story
    let pageIndex: Int

    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: "https://i.imgur.com/QckYg92.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.clear
            }
            .frame(width: .infinity, height: .infinity)
            VStack {
                Rectangle()
                    .fill(.clear)
                    .frame(width: 200, height: 80)
                
                ScrollView {
                    Text(story[pageIndex].text)
                }
                
                ForEach(story[pageIndex].choices, id: \Choice.text) { choice in
                    NavigationLink(destination: StoryPageView(story: story, pageIndex: choice.destination)) {
                        Text(choice.text)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.brown)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color.white.opacity(0.25))
                            .cornerRadius(8)
                    }
                }
                Rectangle()
                    .fill(.clear)
                    .frame(width: 200, height: 50)
                
            }
            .padding()
            .navigationTitle("Page \(pageIndex + 1)")
        .navigationBarTitleDisplayMode(.inline)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct NonlinearStory_Previews: PreviewProvider {
    static var previews: some View {
        StoryPageView(story: story, pageIndex: 0)
    }
}
