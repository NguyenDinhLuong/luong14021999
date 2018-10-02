//
//  MainViewController.swift
//  DinhLuong
//
//  Created by Admin on 02/10/2018.
//  Copyright © 2018 Techsmarter. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var resultTextfield: UILabel!
    
    @IBOutlet weak var searchTextfield: UITextField!
    
    @IBOutlet weak var checkinButton: UIButton!
    
    
    @IBAction func backToprevious(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: false)
    }
    
    let scoreDatabase: Dictionary<String, String> = ["DinhLuong" : "10 điểm", "MaiLinh" : "10 điểm", "KhanhToan" : "8 điểm"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        checkinButton.addTarget(self, action: #selector(self.clickSearchButton), for: .touchUpInside)
        }
    @objc  func clickSearchButton() {
        let searchdata = searchTextfield.text
        
        if searchdata!.isEmpty {
            //create alert popup when user input empty
            let alertController = UIAlertController(title:"Empty data", message: "Please input your name", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            return
        }
        
        for (ten, diem) in scoreDatabase {
            if searchdata == ten {
                resultTextfield.text =  "\(ten): \(diem)"
               
                return
            }
        }
        resultTextfield.text = "Không tìm thấy"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
