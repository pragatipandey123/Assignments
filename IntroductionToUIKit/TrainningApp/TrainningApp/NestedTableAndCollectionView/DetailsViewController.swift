//
//  DetailsViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 23/04/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var detailsTextField: UITextField!
    
    let imageView = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundedImage()
        imageView.delegate = self
    }
    
    func roundedImage() {
        profileImage.layer.cornerRadius = profileImage.frame.height/2
        profileImage.contentMode = .scaleToFill
        profileImage.clipsToBounds = true
    }
    
    @IBAction func UploadButtonTapped(_ sender : Bool) {
        imageView.allowsEditing = true
        imageView.sourceType = .photoLibrary
               
        present(imageView, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
       if let pickedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
           profileImage.contentMode = .scaleToFill
           profileImage.image = pickedImage
       }
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func submitDetails(_ sender: Any) {
        DisplayDetailsViewController.per.append(DisplayDetailsViewController.Person(name: nameTextField.text!, address: addressTextField.text!, age: ageTextField.text!, details: detailsTextField.text!, img: profileImage.image!))
        
        if DisplayDetailsViewController.per.count < 10 {
      DisplayDetailsViewController.temp.append(DisplayDetailsViewController.Person(name: nameTextField.text!, address: addressTextField.text!, age: ageTextField.text!, details: detailsTextField.text!, img: profileImage.image!))
            
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DisplayDetailsViewController") as! DisplayDetailsViewController
        
        
        self.navigationController?.pushViewController(vc, animated: true)

    }

}
