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

struct ContentView3 : View {
    var body: some View {
        
        VStack {
            
            MapView()
            .edgesIgnoringSafeArea(.top) //允许地图内容扩展到屏幕的上边缘，配合Spacer()
            .frame(height:400)
            
            CircleImage()
                .offset( y: -40)
                .padding(.bottom, -20)
            
            VStack(alignment: .leading, spacing: 5) {
                
                HStack(alignment: .center) {
                    
                    Text("ShangHai museum")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .color(.blue)
                        .multilineTextAlignment(.leading)
                    
                        Button(action: self.clickBtn) {
                            Text("Nav")
                            }.foregroundColor(.red)
                        }
                
                        Text("201 Renmin Avenue, Huangpu District, Shanghai")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                
                    }.padding([.leading])

                 Spacer()
            
                }
    }
    
    func clickBtn() -> Void {
        print("clickBtn")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        //ContentView()
        ContentView3()
    }
}
#endif
