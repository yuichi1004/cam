//
//  ViewController.swift
//  Cam
//
//  Created by Yuichi Murata on 2019/02/09.
//  Copyright © 2019 Yuichi Murata. All rights reserved.
//


import Cocoa
import AVFoundation

class ViewController: NSViewController {
    @IBOutlet weak var camView: NSView!
    
    let session = AVCaptureSession()
    var camLayer : AVCaptureVideoPreviewLayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        camView.layer = CALayer()
        
        let dev = getCaptureDevice()
        if dev != nil {
            do {
                try session.addInput(AVCaptureDeviceInput(device: dev!))
                camLayer = AVCaptureVideoPreviewLayer(session: session)
                camLayer?.frame = (camView.layer?.frame)!
                camLayer?.autoresizingMask = [.layerHeightSizable, .layerWidthSizable]
                camView.layer?.addSublayer(camLayer!)
                session.startRunning()
            } catch {
                print(AVCaptureSessionErrorKey.description)
            }
        }
    }
    
    func getCaptureDevice() -> AVCaptureDevice? {
        let devices = AVCaptureDevice.devices()
        for device in devices {
            if ((device as AnyObject).hasMediaType(AVMediaType.video)) {
                return device as AVCaptureDevice
            }
        }
        return nil
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}
