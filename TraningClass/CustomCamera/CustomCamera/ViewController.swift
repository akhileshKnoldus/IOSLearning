//
//  ViewController.swift
//  CustomCamera
//
//  Created by Akhilesh Gupta on 23/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    
    var session: AVCaptureSession?
    var stillImageOutput: AVCaptureStillImageOutput?
    var videoPreviewLayer: AVCaptureVideoPreviewLayer?
    
    
    func setupCaptureSession(){
        session!.sessionPreset = AVCaptureSession.Preset.photo
    }
    
    func setupDevice(){
        let deviceDescoverySession = AVCaptureDevice.DiscoverySession
        
    }
    
    @IBOutlet weak var photoPreviewImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
//        session = AVCaptureSession()
//
//        let backCamera =  AVCaptureDevice.default(for: AVMediaType.video)
//        var error: NSError?
//        var input: AVCaptureDeviceInput!
//        do {
//            input = try AVCaptureDeviceInput(device: backCamera!)
//        } catch let error1 as NSError {
//            error = error1
//            input = nil
//            print(error!.localizedDescription)
//        }
//
//        if error == nil && session!.canAddInput(input) {
//            session!.addInput(input)
//            stillImageOutput = AVCaptureStillImageOutput()
//            stillImageOutput?.outputSettings = [AVVideoCodecKey:  AVVideoCodecJPEG]
//
//            if session!.canAddOutput(stillImageOutput!) {
//                session!.addOutput(stillImageOutput!)
//                videoPreviewLayer = AVCaptureVideoPreviewLayer(session: session!)
//                videoPreviewLayer!.videoGravity =    AVLayerVideoGravity.resizeAspect
//                videoPreviewLayer!.connection?.videoOrientation =   AVCaptureVideoOrientation.portrait
//                previewView.layer.addSublayer(videoPreviewLayer!)
//                session!.startRunning()
//            }
//        }
//
//}
//override func didReceiveMemoryWarning() {
//    super.didReceiveMemoryWarning()
//    // Dispose of any resources that can be recreated.
//}
//
//override func viewDidAppear(animated: Bool) {
//    super.viewDidAppear(animated)
//    videoPreviewLayer!.frame = previewView.bounds
//}
//
//@IBAction func didTapOnTakePhotoButton(_ sender: UIButton) {
//}

}

