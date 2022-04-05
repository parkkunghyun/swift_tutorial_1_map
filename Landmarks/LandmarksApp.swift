//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 박경현2 on 2022/04/04.
//

import SwiftUI

@main
// main은 앱의 진입점을 식별한다
// 스위프트를 사용하는 앱 UI앱의 라이프 사이클은 앱프로토콜에 부합하는 구조를 가지고 있다.
// 구조물의 본문 속성은 하나이상의 장면을 반환한다 장면에서 다시 표시할 내용을 제공
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
