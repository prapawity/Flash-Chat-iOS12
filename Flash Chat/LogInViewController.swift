//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import FirebaseAuth

class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {

        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (AuthDataResult, Error) in
            if Error != nil {
                print(Error)
            }else{
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
        
    }
    


    
}  
