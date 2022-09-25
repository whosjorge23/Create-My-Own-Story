//
//  StoryView.swift
//  Create My Own Story
//
//  Created by Giorgio Giannotta on 24/09/22.
//

import SwiftUI

//@available(iOS 16.0, *)

struct StoryView: View {
    
    var body: some View {
        NavigationView {
            StoryPageView(story: story, pageIndex: 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
