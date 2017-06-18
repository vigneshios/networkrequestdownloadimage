//
//  ViewController.swift
//  MakingaNetworkRequest
//
//  Created by vignesh on 6/18/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        guard let imageURL = URL(string: "http://kids.nationalgeographic.com/content/dam/kids/photos/articles/Other%20Explore%20Photos/R-Z/Wacky%20Weekend/Wild%20Cats/ww-wild-cats-tiger.adapt.945.1.jpg") else {return}
        
        let task = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
            
            if error == nil {
                let downloadImage = UIImage(data: data!)
                
                DispatchQueue.main.async {
                    self.imageView.image = downloadImage
                }
            }
        }
        
        task.resume()
        
        
    }
}
    



