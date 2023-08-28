//
//  ViewController.swift
//  AR-Tank
//
//  Created by Robert P on 28.08.2023.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    var tankAnchor: TinyToyTank._TinyToyTank?
    var isActionPlaying: Bool = false

    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        arView.scene.anchors.append(tankAnchor!)
        tankAnchor!.cannon?.setParent(tankAnchor!.tank, preservingWorldTransform: true)
        tankAnchor?.actions.actionComplete.onAction = { _ in
          self.isActionPlaying = false
        }
    }
    
    @IBAction func rightTapped(_ sender: UIButton) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }

        tankAnchor!.notifications.tankRight.post()
    }
    
    @IBAction func leftTapped(_ sender: UIButton) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }

        tankAnchor!.notifications.tankLeft.post()
    }
    
    @IBAction func forwardTapped(_ sender: UIButton) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }

        tankAnchor!.notifications.tankForward.post()
    }
    
    @IBAction func fireTapped(_ sender: UIButton) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }

        tankAnchor!.notifications.cannonFire.post()
    }
    
    @IBAction func turretLeftTapped(_ sender: UIButton) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }

        tankAnchor!.notifications.turretLeft.post()
    }
    
    @IBAction func turrentRightTapped(_ sender: UIButton) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }

        tankAnchor!.notifications.turretRight.post()
    }
    
    
}
