//
//  ViewController.swift
//  UIElementsApp
//
//  Created by Pragati Pandey on 02/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var placePicker: UITextField!
    @IBOutlet weak var DateofBirthPicker: UITextField!
    @IBOutlet weak var switchLabel: UISwitch!
    
    let imagePick = UIImagePickerController()
    let placePick = UIPickerView()
    let datePicker = UIDatePicker()
    
    var selectCountry : String?
    var countryList = ["India", "America", "Japan", "China", "Algeria"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "SIGN UP"
        imagePick.delegate = self
        imageView.layer.cornerRadius = imageView.frame.height/2
        imageView.clipsToBounds = true
        
        createDatePicker()
        
        createPickerVIEW()
        dismissPickerView()
    }
    
   
    //MARK: IMAGE PICKER
    
    @IBAction func UploadButtonTapped(_ sender : Bool) {
        imagePick.allowsEditing = true
        imagePick.sourceType = .photoLibrary
               
        present(imagePick, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
       if let pickedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
           imageView.contentMode = .scaleToFill
           imageView.image = pickedImage
       }
        dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: Place Picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
          return 1
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           return countryList.count
       }
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
               return countryList[row]
           }
       
           func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
               selectCountry = countryList[row]
               placePicker.text = selectCountry
           }
       
       func createPickerVIEW(){
           placePick.delegate = self
           placePicker.inputView = placePick
           placePick.dataSource = self
       }
       
       func dismissPickerView() {
           let toolBar = UIToolbar()
           toolBar.sizeToFit()
           let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
           toolBar.setItems([button], animated: true)
           toolBar.isUserInteractionEnabled = true
           placePicker.inputAccessoryView = toolBar
       }
       
       @objc func action(){
           view.endEditing(true)
       }
       
    
   
    //MARK: DATE PICKER
    func createDatePicker() {
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneBtnTapped))
        toolbar.setItems([doneBtn], animated: true)
       
        //assign toolbar
        DateofBirthPicker.inputAccessoryView = toolbar
       
        //assign date picker totextfield
        DateofBirthPicker.inputView = datePicker
        datePicker.datePickerMode = .date
    }
    @objc func doneBtnTapped() {
        //formating the DatePicker
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        DateofBirthPicker.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
  
    //MARK: Switch Button
    @IBAction func switchAction(sender : UISwitch) {
           if sender.isOn {
               print("Switch is On")
            
           } else {
               print("Switch is Off")
            
           }
}
    
    //MARK: Sign Up Button
    @IBAction func SignUpBtnTapped(_ sender : Bool) {
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "HomePageViewController") as! HomePageViewController
        vc.inheritedImage = imageView.image
    self.navigationController?.pushViewController(vc, animated: true)
    
    }
   
    
    
    
}

