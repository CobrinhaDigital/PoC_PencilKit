//
//  ContentView.swift
//  PoC_PencilKit
//
//  Created by Beatriz Peixoto on 07/06/24.
//

import SwiftUI
import PencilKit

struct PencilKitView: UIViewRepresentable {
    typealias UIViewType = PKCanvasView
    
    //funcao basica que cria o canvas
    func makeUIView(context: Context) -> PKCanvasView {
        //constante que cria o canvas onde o desenho pode ocorrer
        let pencilKitCanvasView = PKCanvasView()
        
        //drawingPolicy seta o tipo de input que faz o desenho
        pencilKitCanvasView.drawingPolicy = PKCanvasViewDrawingPolicy.anyInput
        
        //modificador autoexplicativo, reduz a latência, isto é, a demora para o rabisco aparecer na tela
        pencilKitCanvasView.becomeFirstResponder()
        
        func setVisible(_ visible: Bool, forFirstResponder responder: UIResponder ) {}
        
        return pencilKitCanvasView
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        
    }
    
    
}


struct ContentView: View {
    var body: some View {
        PencilKitView()
    }
}

#Preview {
    ContentView()
}
