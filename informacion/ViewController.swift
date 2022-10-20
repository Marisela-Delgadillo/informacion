//
//  ViewController.swift
//  informacion
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTexto: UILabel!
    @IBOutlet weak var swPermisoNavegacion: UISwitch!
    @IBOutlet weak var lblAdvertenciaSwitch: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAdvertenciaSwitch.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! ModificarController
        destino.texto = lblTexto.text
        destino.callBackActualizar = actualizarTexto
    }

    @IBAction func doTaoIrOtroVC(_ sender: Any) {
        lblAdvertenciaSwitch.isHidden = true
        if swPermisoNavegacion.isOn{
            performSegue(withIdentifier: "goToModificar", sender: self)
        }else{
            lblAdvertenciaSwitch.isHidden = false
        }
        
    }
    
    func actualizarTexto(texto: String){
        lblTexto.text = texto
    }
    
    
}

