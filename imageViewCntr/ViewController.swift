//
//  ViewController.swift
//  imageViewCntr
//
//  Created by Mac on 23/01/19.
//  Copyright © 2019 bhadresh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var imgView: UIImageView!
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        super.viewWillTransition(to: size, with: coordinator)
        if UIDevice.current.orientation.isLandscape{
            imgView.image = #imageLiteral(resourceName: "backLandscap")
        }
        else if UIDevice.current.orientation.isPortrait{
            imgView.image = #imageLiteral(resourceName: "backPotrait")
        }
    }


}

