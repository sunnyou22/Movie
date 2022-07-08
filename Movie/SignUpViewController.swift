//
//  JACKFLIXViewController.swift
//  Movie
//
//  Created by 방선우 on 2022/07/06.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var AppTitle: UILabel!
    @IBOutlet weak var mobileAdress: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var nickName: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var recommandCodeID: UITextField!
    @IBOutlet weak var signUp: UIButton!
    @IBOutlet weak var additionalInformation: UILabel!
    @IBOutlet weak var informationSwitch: UISwitch!
    @IBOutlet var textFieldList: [UITextField]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        AppTitle.text = "JACKFLIX"
        AppTitle.textColor = .red
        AppTitle.textAlignment = .center
        AppTitle.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        
        additionalInformation.text = "추가 정보 입력"
        additionalInformation.textColor = .white
        
        setTextFieldsDefault(at: mobileAdress, "이메일 주소 또는 전화번호", placeholder: "이메일 주소 또는 전화번호를 입력하세요.", keyboardType: .emailAddress)
        setTextFieldsDefault(at: password, "비밀번호", placeholder: "비밀번호를 입력하세요.", keyboardType: .numbersAndPunctuation)
        setTextFieldsDefault(at: nickName, "닉네임", placeholder: "닉네임을 입력하세요.", keyboardType: .default)
        setTextFieldsDefault(at: location, "위치", placeholder: "위치를 입력하세요.", keyboardType: .default)
        setTextFieldsDefault(at: recommandCodeID, "추천코드입력", placeholder: "추천 코드를 입력하세요.", keyboardType: .default)
        
        for i in textFieldList {
            i.textAlignment = .center
            i.borderStyle = .roundedRect
            i.backgroundColor = UIColor.gray
            i.textColor = .white
        }
        
        informationSwitch.setOn(false, animated: true)
        informationSwitch.onTintColor = .magenta
        informationSwitch.thumbTintColor = .lightGray
        
        
        signUp.setTitle("회원가입", for: .normal)
        signUp.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        signUp.setTitleColor(.black, for: .normal)
        signUp.tintColor = .gray
        signUp.layer.cornerRadius = 5
        signUp.backgroundColor = .white
    }
    
    func setTextFieldsDefault(at textField: UITextField, _ text: String, placeholder: String, keyboardType: UIKeyboardType) {
        textField.text = text
        textField.placeholder = placeholder
        textField.keyboardType = keyboardType
    }
    
   
    @IBAction func isSecureTextEntry(_ sender: UITextField) {
        password.text = ""
        password.isSecureTextEntry = true
    }
    
    @IBAction func disappeareText(_ sender: UITextField) {
        nickName.text = ""
    }
}
