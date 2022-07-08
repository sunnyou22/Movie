//
//  SecondViewController.swift
//  Movie
//
//  Created by 방선우 on 2022/07/05.
//

import UIKit

class SecondViewController: UIViewController {
    //아웃렛 변수
    //스토리보드의 이미지를 코드에서 바꿀 수 있기 때문
    //아직 초기화하지 않고 선언만한 상태
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    
    //뷰컨트롤러 생명주기 종류 중 하나
    //사용자에게 화면이 보이기 직전에 설정하는 기능들
    //option command < 접을 때 > 이건필때
    override func viewDidLoad() {
        super.viewDidLoad()

        posterImageView.image = UIImage(named: "movie\(Int.random(in: 1...7))")
        posterImageView.layer.cornerRadius = 50
        posterImageView.layer.borderWidth = 5
        posterImageView.layer.borderColor = UIColor.blue.cgColor
        
        titleLable.text = "택시운전사"
        titleLable.backgroundColor = .yellow
        titleLable.textColor = .red
        titleLable.font = .boldSystemFont(ofSize: 30)
        
    }
    
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        //버튼을 눌렀다가 뗐을 때 실행되는 것 -> touch up inside
        posterImageView.image = UIImage(named: "movie\(Int.random(in: 1...7))")
    }
    
    
}
