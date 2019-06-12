//
//  ContentView.swift
//  1.SwiftUI_Essentials
//
//  Created by shangkun on 2019/6/12.
//  Copyright © 2019 wushangkun. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Hello World")
    }
}

struct ContentView2 : View {
    var body: some View {
        Text("Hello SwiftUI ！")
        .font(.largeTitle)
        .fontWeight(.medium)
        .color(.red)
        .multilineTextAlignment(.center)
        .lineLimit(4)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        //ContentView()
        ContentView2()
    }
}
#endif
