//
//  PopVC.swift
//  pixel-city
//
//  Created by Marko Perusko on 3/24/19.
//  Copyright © 2019 Marko Perusko. All rights reserved.
//

import UIKit

class PopVC: UIViewController {
    
    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popImageView.image = passedImage
        addDoubleTap()
    }
    
    func initData(forImage image: UIImage) {
        self.passedImage = image
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(dismiss(animated:completion:)))
        doubleTap.numberOfTapsRequired = 2
        //doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
}
