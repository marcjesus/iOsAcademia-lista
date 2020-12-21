//
//  SecondViewController.swift
//  lista
//
//  Created by Marc Jesus on 17/12/2020.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var item: UITextField!
    
    @IBAction func additem(_ sender: Any) {
        elementos.append(item.text!)
        item.text = ""
        print(elementos)
        UserDefaults.standard.setValue(elementos, forKey: "elementos")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    
    


}
