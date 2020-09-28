//
//  AuthViewController.swift
//  NewVkNews
//
//  Created by Emil Mubarakov on 26/07/2020.
//  Copyright © 2020 Emil Mubarakov. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {

    private var authService: AuthService!
    
    @IBOutlet weak var loginInVk: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginInVk.layer.cornerRadius = 5
        loginInVk.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        loginInVk.layer.borderWidth = 2
        
//        authService = AuthService()
        authService = AppDelegate.shared().authService

    }
    
    @IBAction func signInTouch() {
        authService.wakeUpSession()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
