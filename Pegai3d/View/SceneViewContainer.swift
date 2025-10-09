
import SwiftUI
import SceneKit

// SceneViewContainer yalnızca macOS ve iPadOS hedefleri için tasarlanmıştır.
// iPhone UI desteği plan dışı olduğundan iOS koşulunda iPad odaklı kullanım varsayılır.

#if os(macOS)
struct SceneViewContainer: NSViewRepresentable {
    func makeNSView(context: Context) -> SCNView {
        configuredSceneView()
    }
    func updateNSView(_ nsView: SCNView, context: Context) {}
}
#elseif os(iOS)
import UIKit
struct SceneViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> SCNView { configuredSceneView() }
    func updateUIView(_ uiView: SCNView, context: Context) {}
}
#endif

// Ortak SceneKit yapılandırması
private func configuredSceneView() -> SCNView {
    let view = SCNView()
    view.scene = makeScene()
    view.allowsCameraControl = true
#if os(macOS)
    view.backgroundColor = NSColor.windowBackgroundColor
#else
    view.backgroundColor = UIColor.systemBackground
#endif
    return view
}

private func makeScene() -> SCNScene {
    let scene = SCNScene()
    let cameraNode = SCNNode()
    cameraNode.camera = SCNCamera()
    cameraNode.position = SCNVector3(x: 0, y: 0, z: 10)
    scene.rootNode.addChildNode(cameraNode)
    let lightNode = SCNNode()
    lightNode.light = SCNLight()
    lightNode.light?.type = .omni
    lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
    scene.rootNode.addChildNode(lightNode)
    let boxNode = SCNNode(geometry: SCNBox(width: 1, height: 1, length: 1, chamferRadius: 0.1))
    boxNode.position = SCNVector3(x: 0, y: 0, z: 0)
    scene.rootNode.addChildNode(boxNode)
    return scene
}

// SwiftUI Preview
struct SceneViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        SceneViewContainer()
            .frame(height: 300)
    }
}
