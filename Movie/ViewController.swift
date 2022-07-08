//
//  ViewController.swift
//  Movie
//
//  Created by 방선우 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var previewPosters: [UIImageView]!
    @IBOutlet weak var posterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        
        previewPosters.map {(image: UIImageView) in
            image.layer.cornerRadius = image.frame.height / 2
            image.layer.borderWidth = 3
            image.layer.borderColor = UIColor.lightGray.cgColor
        }
        
        //        movieOne.layer.cornerRadius = 60
        //        movieOne.layer.borderWidth = 3
        //        movieOne.layer.borderColor = UIColor.gray.cgColor
        //        movieTwo.layer.cornerRadius = 60
        //        movieTwo.layer.borderWidth = 3
        //        movieTwo.layer.borderColor = UIColor.gray.cgColor
        //        movieThree.layer.cornerRadius = 60
        //        movieThree.layer.borderWidth = 3
        //        movieThree.layer.borderColor = UIColor.gray.cgColor
    }
    
    @IBAction func changePosterImageView(_ sender: UIButton) {
        shufflePosters()
        
        
        //        posterImageView.image = UIImage(named: "movie\(Int.random(in: 1...4))")
        //        movieOne.image = UIImage(named: "movie\(Int.random(in: 1...4))")
        //        movieTwo.image = UIImage(named: "movie\(Int.random(in: 1...4))")
        //        movieThree.image = UIImage(named: "movie\(Int.random(in: 1...4))")
    }
    
    func shufflePosters() -> [()] {
        return previewPosters.map { (poster: UIImageView) in
            poster.image = UIImage(named: "movie\(Int.random(in: 1...4))")
            posterImageView.image = UIImage(named: "movie\(Int.random(in: 1...4))")
        }
    }
}

