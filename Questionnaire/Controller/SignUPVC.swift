//
//  ViewController.swift
//  Apicalling2
//
//  Created by MAC OS 4 on 07/04/22.
//

import UIKit

class SignUPVC: UIViewController {
    
    //MARK: - Variable
    var name : String = ""
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        txtName.text = nil
    }
    
    //MARK: - Action Method
    @IBAction func btnClicked(_ sender: UIButton) {
        if let name = txtName.text {
            if name.isEmpty {
                openAlert(title: "Alert", message: "Your Text Field is Empty.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in print("Okay clicked")}])
                
            }
            if name.validName() {
                
                print("Taped")
                
                self.name = txtName.text!
                //  let nm: type  = UIStoryboar.d(name: "NameValidation", bundle: nil)
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyBoard.instantiateViewController(withIdentifier: "QuestionVC") as! QuestionVC
                vc.PlayedPlayerName = self.name
                self.navigationController?.pushViewController(vc, animated: true)
            }
            else {
                openAlert(title: "Alert", message: "Please Enter Only String", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in print("Okay clicked")}])            }
        }
    }
}


