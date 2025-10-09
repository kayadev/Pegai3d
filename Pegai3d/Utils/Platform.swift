import Foundation
#if os(macOS)
import AppKit
public typealias UXColor = NSColor
public typealias UXViewRepresentable = NSViewRepresentable
#elseif os(iOS)
import UIKit
public typealias UXColor = UIColor
public typealias UXViewRepresentable = UIViewRepresentable
#endif
