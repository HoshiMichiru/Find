//
//  AccountViewController.swift
//  Find
//
//  Created by 星みちる on 2019/10/03.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit
import Firebase

class AccountViewController: UIViewController {

    @IBOutlet weak var mailAdress: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var auth:Auth!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        auth = Auth.auth()
        
        mailAdress.delegate = self
        password.delegate = self
        
    }
    //メアドとパスの設定登録
    @IBAction func registerAccount(){
        let email = mailAdress.text!
        let pass = password.text!
        
        auth.createUser(withEmail: email, password: pass) { (result, error) in
            if error == nil, let result = result {
                // errorが nil であり、resultがnilではない == user情報がきちんと取得されている。
                self.performSegue(withIdentifier: "Timeline", sender: result.user)
                // 遷移先の画面でuser情報を渡している。
            }
        }
        
        
    }
    

    @IBAction func button(_ sender: UIButton) {
    }
    
    

}

extension AccountViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
