//
//  ViewController.swift
//  HavaDurumu
//
//  Created by İhsan Elkatmış on 30.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.layer.cornerRadius = 6
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        textField.text = ""
    }
    
    @IBAction func btn(_ sender: UIButton) {
        
        let city = textField.text ?? ""
        
        if city.isEmpty {
            
            let alert = UIAlertController(title: "UYARI!", message: "Lütfen şehir adı giriniz.", preferredStyle: .alert)
            
            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alert.addAction(cancelButton)
            
            self.present(alert, animated: true, completion: nil)
            
        }else {
            
            let vc = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
            
            vc.city = city
            
            self.show(vc, sender: nil)
            
        }
        
        
        
    }
    
    
}

