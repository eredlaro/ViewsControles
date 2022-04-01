//
//  ViewController.swift
//  ViewsControles
//
//  Created by nicholas holden on 3/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var campo2: UITextField!
    @IBOutlet weak var boton: UIButton!
    @IBOutlet weak var vista: UIView!
    @IBOutlet weak var campoTexto: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    //Texfield
        campoTexto.textColor = .brown
        campoTexto.placeholder = "Teclea aqui tu nombre"
        campoTexto.delegate = self
        campo2.placeholder = "Tambien teclea aqui"
        campo2.delegate = self
    //Button
        boton.setTitle("click aqui", for: .normal)
    }
 
    @IBAction func clickButton(_ sender: Any) {
        vista.isHidden = true
        
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == campoTexto {
        boton.setTitle(campoTexto.text, for: .normal)
        }
        else{
            boton.setTitle(campo2.text, for: .normal)
        }
    }
}


