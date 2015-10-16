//
//  RegistrationViewController.swift
//  BloodDonor
//
//  Created by Weboniselab on 06/10/15.
//  Copyright © 2015 Weboniselab. All rights reserved.
//

import Foundation
import UIKit

class RegistrationViewController : UIViewController,AKPickerViewDelegate,AKPickerViewDataSource {
    
    @IBOutlet weak var viewBloodType: UIView!
    var viewBloodTypePicker :UIView!
    let tapBloodView = UITapGestureRecognizer()
    let tapBloodTypePicker = UITapGestureRecognizer()
    var pickerViewBloodType = AKPickerView()
    
    override func viewDidLoad() {
        self.navigationBarCustomisation()
        tapBloodView.addTarget(self, action: "makebloodPickerView")
        tapBloodTypePicker.addTarget(self, action: "removeBloodPicker")
        viewBloodType.addGestureRecognizer(tapBloodView)
        viewBloodType.userInteractionEnabled = true
        
        self.pickerViewBloodType.delegate = self
    
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    func navigationBarCustomisation(){
     
        
        
    }
    //MARK : blood picker view
    func makebloodPickerView(){
        let animations = UIViewAnimationOptions.TransitionFlipFromTop
        
        viewBloodTypePicker  = UIView(frame: CGRectMake(0, 0,300, 44))
        viewBloodTypePicker.addGestureRecognizer(tapBloodTypePicker)
        viewBloodTypePicker.backgroundColor = UIColor.redColor()
        UIView.transitionWithView(viewBloodType, duration: 0.7, options: animations, animations: {self.viewBloodType.addSubview(self.viewBloodTypePicker)}, completion: nil)
        
    }
    
    func removeBloodPicker(){
        viewBloodTypePicker.removeFromSuperview()
    }
    
    
    func numberOfItemsInPickerView(pickerView: AKPickerView) -> Int {
        return 8;
    }
    
   
}

