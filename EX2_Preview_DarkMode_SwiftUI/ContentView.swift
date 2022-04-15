//
//  ContentView.swift
//  EX2_Preview_DarkMode_SwiftUI
//
//  Created by 송윤근 on 2022/04/11.
//

import SwiftUI

struct ContentView: View {
    
    //다크모드 불러오기위해
    //Enviroment 속성 래퍼 : 환경설정을 읽어오는 어노테이션
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text("Hello, SwiftUI")
            .multilineTextAlignment(.center)
            .padding(.all, 30.0)
            .background( colorScheme == .light ? Color.white : Color.black )
            .foregroundColor(Color.red)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            //기본
            ContentView()
                .environment(\.colorScheme, .light)
            
            //다크모드
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
}
