//
//  FirstViewController.swift
//  lista
//
//  Created by Marc Jesus on 17/12/2020.
//

import UIKit

var elementos = [String]()


class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var mitabla: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mitabla.delegate = self
        mitabla.dataSource = self
        
        if(UserDefaults.standard.object(forKey: "elementos") != nil) {
            elementos = UserDefaults.standard.object(forKey: "elementos") as! [String]
            
        }
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elementos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mitabla.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = elementos[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            elementos.remove(at: indexPath.row)
            UserDefaults.standard.setValue(elementos, forKey: "elementos")
            mitabla.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        mitabla.reloadData()
    }
    
    
}
