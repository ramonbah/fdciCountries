//
//  ViewController.swift
//  fdciExam
//
//  Created by Ramon Jr Bahio on 5/7/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblNameError: UILabel!
    @IBOutlet weak var txtRegion: UITextField!
    @IBOutlet weak var lblRegionError: UILabel!
    @IBOutlet weak var txtCountry: UITextField!
    
    let requestManager = RequestManager()
    
    var currentPerson = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestManager.getCountries()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSubmitTapped(_ sender: UIButton) {
        currentPerson.name = txtName.text!
        print("\(currentPerson.name) - \(currentPerson.region) - \(currentPerson.country)")
    }
}

