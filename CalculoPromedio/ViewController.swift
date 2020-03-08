//
//  ViewController.swift
//  CalculoPromedio
//
//  Created by Miguel Angel Jimenez Melendez on 3/8/20.
//  Copyright © 2020 Miguel Angel Jimenez Melendez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtgeo: UITextField!
    @IBOutlet weak var txtesp: UITextField!
    @IBOutlet weak var txthis: UITextField!
    @IBOutlet weak var txtmat: UITextField!
    @IBOutlet weak var txtnom: UITextField!
    var calificacio = [Calificacion]()
    override func viewDidLoad() {
        super.viewDidLoad()
        txtnom.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnconsulta(_ sender: Any) {
        self.performSegue(withIdentifier: "Slista", sender: self)
    }
    @IBAction func btnpromedio(_ sender: UIButton) {
        if txtnom.text!.isEmpty || txtmat.text!.isEmpty || txthis.text!.isEmpty || txtesp.text!.isEmpty || txtgeo.text!.isEmpty {
            alerta(title: "Falta Informaciòn", message: "Complete el formulario")
            txtnom.becomeFirstResponder()
        }else{
            let m = Double(txtmat.text!)!
            let h = Double(txthis.text!)!
            let e = Double(txtesp.text!)!
            let g = Double(txtgeo.text!)!
            let promedio = (m+h+e+g)/4
            calificacio.append(Calificacion(nom: txtnom.text!, mat: m, his: h, esp: h, geo: g, prom: promedio))
            txtnom.text = ""
            txtmat.text = ""
            txthis.text = ""
            txtesp.text = ""
            txtgeo.text = ""
            alerta(title: "Promedio", message: "Su promedio es \(promedio)")
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SLista"{
            let view = segue.destination as! TableViewController
            view.calificacion = calificacio
        }
    }
    func alerta(title: String, message: String){
        //Crea una alerta
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        //Agrega un boton
        alert.addAction(UIAlertAction(title: "Aceptar",style: UIAlertAction.Style.default, handler: nil))
        //Muestra la alerta
        self.present(alert, animated: true, completion: nil)
    }

}

