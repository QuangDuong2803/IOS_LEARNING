//
//  ViewController.swift
//  LearningBasicSwift
//
//  Created by Quang Duong on 3/3/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var signInTitle: UILabel!
    @IBOutlet weak var logoTitle: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.signInTitle.adjustsFontSizeToFitWidth = true
        self.signInTitle.minimumScaleFactor = 0.2
        
        self.logoTitle.adjustsFontSizeToFitWidth = true
        self.logoTitle.minimumScaleFactor = 0.2
        
        let url: String = "https://choxe.vn/blog/wp-content/uploads/2019/01/Mercedes-Benz.png"
        self.logoImageView.loadImage(url: url)
    
    }
}

extension UIImageView {
    func loadImage(url: String) {
        let convertURL: URL = URL(string: url)!
        
        DispatchQueue.main.async { [weak self] in
            if let data = try? Data(contentsOf: convertURL) {
                if let image = UIImage(data: data) {
                    self?.image = image
                }
            }
        }
    }
}

