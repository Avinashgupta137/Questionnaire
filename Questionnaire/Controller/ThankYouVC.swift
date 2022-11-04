//
//  ThankYouVC.swift
//  Pods
//
//  Created by MAC OS 4 on 08/04/22.
//

import UIKit
import Lottie

class ThankYouVC: UIViewController {
    
    var PlayerName: String = ""
    var TotalScore: Int = 0
    private var animationView: AnimationView?
    
    //MARK: - Outlet
    @IBOutlet weak var cardView: UIView!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var lblPlayer: UILabel!
    
    //MARK: - Variable
    var completionHandler: ((String)->(Void))?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPlayer.text = "\(self.PlayerName) \(String(self.TotalScore))"
        setShadow(view: cardView)
        setlottie()
        cardView.addSubview(animationView!)
        animationView!.play()
    }
    //MARK: - Custom Function
    func handler(_ block: @escaping ((String) -> (Void))){
        self.completionHandler = block
    }
    
    func setlottie() {
        animationView = .init(name: "party2")
        animationView!.frame = view.bounds
        animationView!.contentMode = .scaleAspectFill
        animationView!.loopMode = .playOnce
        animationView!.animationSpeed = 1.0
        
    }
    
    //MARK: - Action Method
    @IBAction func btnNewGame(_ sender: Any) {
        dismiss(animated: true)
        self.completionHandler?("NewGame")
        print("Clicked")
    }
    @IBAction func btnRestart(_ sender: Any) {
        self.completionHandler?("Done")
        print("Clicked")
        dismiss(animated: true)
    }
}
