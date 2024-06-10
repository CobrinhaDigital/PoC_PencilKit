//
//  CanvasTest02.swift
//  PoC_PencilKit
//
//  Created by Beatriz Peixoto on 08/06/24.
//

//treinar strokes

import SwiftUI
import PencilKit

struct CanvasTest02: View {
    @State private var canvas = PKCanvasView()
    @State private var pencilType = PKInkingTool.InkType.fountainPen
    
    var body: some View {
        DrawingView02(canvas: $canvas, pencilType: $pencilType)
    }
}

struct DrawingView02: UIViewRepresentable {
    typealias UIViewType = PKCanvasView
    
    @Binding var canvas: PKCanvasView
    @Binding var pencilType: PKInkingTool.InkType

    func makeUIView(context: Context) -> PKCanvasView {
        let inkingTool = PKInkingTool(pencilType, color: .black, width: 15)
        canvas.tool = inkingTool
        canvas.drawingPolicy = PKCanvasViewDrawingPolicy.anyInput
        return canvas
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) { }
}

#Preview {
    CanvasTest02()
}
