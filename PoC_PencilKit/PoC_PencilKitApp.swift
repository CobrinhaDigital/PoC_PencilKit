//
//  PoC_PencilKitApp.swift
//  PoC_PencilKit
//
//  Created by Beatriz Peixoto on 07/06/24.
//

import SwiftUI

@main
struct PoC_PencilKitApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView()
            CanvasTest01()
        }
        .modelContainer(for: DataItem.self)
    }
}
