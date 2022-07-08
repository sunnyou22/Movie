//
//  CircleImageView.swift
//  Movie
//
//  Created by 방선우 on 2022/07/04.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("광해")
            .clipShape(Circle())
        Image("국제시장")
            .clipShape(Circle())
        Image("신과함께죄와벌")
            .clipShape(Circle())
    }
}

struct CirCleImage_Previw: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
