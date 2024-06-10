//
//  CanvasTest01.swift
//  PoC_PencilKit
//
//  Created by Beatriz Peixoto on 08/06/24.
//

import SwiftUI
import SwiftData
import PencilKit

@Model
class DataItem: Identifiable {
    var name: String
    
    init(id: String, name: String) {
        self.name = ""
    }
}

struct CanvasTest01: View {
    @Environment(\.modelContext) private var context
    var body: some View {
        Button("Tap to save") {
            let item = DataItem(id: "",   name: "a")
            context.insert(item)
        }
        DrawingView()
    }
}

struct DrawingStroke {
    init(
        ink: PKInk,
        path: PKStrokePath,
        transform: CGAffineTransform,
        mask: UIBezierPath
    ) {
        for point in path.interpolatedPoint(at: 5.3) {
            
        }
    }
}

struct DrawingView: UIViewRepresentable {
    typealias UIViewType = PKCanvasView
    
    func makeUIView(context: Context) -> PKCanvasView {
        let canvas = PKCanvasView()
        let inkingTool = PKInkingTool(.fountainPen, color: .black, width: 10)
        canvas.tool = inkingTool
        canvas.drawingPolicy = PKCanvasViewDrawingPolicy.anyInput
        return canvas
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) { }
}

#Preview {
    CanvasTest01()
}
