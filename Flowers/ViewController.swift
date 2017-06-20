//
//  ViewController.swift
//  Flowers
//
//  Created by Gaël on 19/06/2017.
//  Copyright © 2017 Gaël Foppolo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    let model = FlowerClassifier()
    
    // MARK: IBOutlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var prediction: UILabel!
    
    // MARK: UIView
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setup()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setup() {
        
        let file = "rose.jpg"
        let image = UIImage(named: file)!
        
        let buffer = image.buffer()!
        guard let output = try? model.prediction(data: buffer) else {
            print("failed")
            return
        }
        
        let proba = Int(output.prob[output.classLabel]!*100)
        
        imageView.image = image
        prediction.text = "I think it's a \(output.classLabel) at \(proba)%"
        
    }
    
}


