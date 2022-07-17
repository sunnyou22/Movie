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
    @IBOutlet weak var passwordCheckButton: UIButton!
    @IBOutlet var textFieldList: [UITextField]!
    
    //MARK: - 뷰로드
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
            // textFieldName.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        }
        /*
         switchButton.onTintColor = UIColor.blue
         switchButton.tintColor = UIColor.red
         switchButton.thumbTintColor = UIColor.white
         switchButton.backgroundColor = UIColor.red
         switchButton.layer.cornerRadius = 1
         */
        informationSwitch.setOn(false, animated: true)
        informationSwitch.onTintColor = .magenta
        informationSwitch.tintColor = .white
        informationSwitch.thumbTintColor = .lightGray
        informationSwitch.backgroundColor = .blue
        informationSwitch.layer.cornerRadius = 16
        
        
        signUp.setTitle("회원가입", for: .normal)
        signUp.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        signUp.setTitleColor(.black, for: .normal)
        signUp.tintColor = .gray
        signUp.layer.cornerRadius = 5
        signUp.backgroundColor = .white
        
        passwordCheckButton.setTitle("중복\n확인", for: .normal)
        passwordCheckButton.layer.backgroundColor = UIColor.blue.cgColor
    }
    
    //MARK: - 메서드
    func setTextFieldsDefault(at textField: UITextField, _ text: String, placeholder: String, keyboardType: UIKeyboardType) {
        textField.text = text
        textField.placeholder = placeholder
        textField.keyboardType = keyboardType
        textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }
    
    @IBAction func isSecureTextEntry(_ sender: UITextField) {
        password.text = ""
        password.isSecureTextEntry = true
    }
    
    @IBAction func disappeareText(_ sender: UITextField) {
        nickName.text = ""
    }
    
    /*
     텍스트 필드를 클릭하면 화면전환을 할 수 있는 방법은 없을까?
     화면전환 코드가 너무 어렵다..
     
     @IBAction func locationTextFieldTest(_
     
     
     }
     */
    
    // 텍스트 필드는 버튼 역할을 하지 못하는 구나
    @IBAction func passwordButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "알림", message: "사용가능한 비밀 번호입니다.", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "default", style: .default)
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: .none)
        let destructiveAction = UIAlertAction(title: "destructive", style: .destructive)
        
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
        alert.addAction(destructiveAction)
        
        self.present(alert, animated: false)
    }
}
