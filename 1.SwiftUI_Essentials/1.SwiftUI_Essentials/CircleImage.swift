//
//  CircleImage.swift
//  1.SwiftUI_Essentials
//
//  Created by shangkun on 2019/6/12.
//  Copyright © 2019 wushangkun. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        Image("stmarylake")
        .resizable()
        .frame(width: 150, height: 150, alignment: .center)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 3)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
