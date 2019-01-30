//
//  PickImageViewController.swift
//  imageViewCntr
//
//  Created by Mac on 29/01/19.
//  Copyright © 2019 bhadresh. All rights reserved.
//

import UIKit


//step 1
class PickImageViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //step 2
    @IBOutlet weak var imageView: UIImageView!
    
    //step 3
    var imgPickerCntr = UIImagePickerController()
    
    //ste 4
    @IBAction func TapToSelectImageAction(_ sender: UIButton) {

            //step 5
            imgPickerCntr.delegate = self
            imgPickerCntr.sourceType = .photoLibrary
        
        //step 6
        //self.navigationController?.pushViewController(imgPickerCntr, animated: true)
        self.present(imgPickerCntr, animated: true, completion: nil)
        
    }
    
    
    //step 7
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //cancel picking image
        //self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    //step 8
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let img:UIImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        self.imageView.image = img
        
        //self.navigationController?.popViewController(animated: true)
self.dismiss(animated: true, completion: nil)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
