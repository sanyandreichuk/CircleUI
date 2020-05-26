//
//  TitleView.swift
//  CircleUI
//
//  Created by beon on 25.05.2020.
//  Copyright © 2020 beon. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        
        HStack(spacing: 0) {
            Image("ic_circle")
                .padding(.top, 6)
            Text("circle")
                .font(Font.system(size: 40))
                .foregroundColor(Color("primaryColor"))
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
