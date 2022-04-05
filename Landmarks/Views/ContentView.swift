//
//  ContentView.swift
//  Landmarks
//
//  Created by 박경현2 on 2022/04/04.
//
// 맨 오른쪽에 있는 스토리보드에도 잇는 속성이 inspector라고 불리네
// custom 하려면 modifier를 호출해야한다!
// modifier는 새뷰를 반환하므로 여러 수식자를 쌓아올리는것이 일반적 -> 걍 stack 이라는 소리

// 뷰를 그룹으로 묶어서 다양한 스택으로 구분화해라 !!
import SwiftUI

// 첫번째인 애는 보기 프로토콜을 준수하며 보기의 내용 및 레이아웃을 설명한다
struct ContentView: View {
    var body: some View {
        LandmarkList()
        
    }
}

// 애는 해당 보기에 대한 미리보기를 선언
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
