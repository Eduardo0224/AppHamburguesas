//
//  ViewController.swift
//  AppHamburguesas
//
//  Created by Eduardo on 5/11/15.
//  Copyright © 2015 EduardoAndrade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgBandera: UIImageView!
    @IBOutlet weak var imgHamburguesa: UIImageView!
    @IBOutlet weak var btnPedirHamburguesa: UIButton!
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblHamburguesa: UILabel!
    
    var coleccionDePaises = ColeccionDePaises()
    var coleccionDeHamburguesas = ColeccionDeHamburguesa()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnPedirHamburguesa.layer.cornerRadius = 17
    }
    
    
    @IBAction func cambioDePaisHamburguesa() {
        
        let tuplaObtenida = self.coleccionDePaises.obtenerTupla()        
        
        self.lblPais.text = tuplaObtenida.0
        self.imgBandera.image = UIImage(named: "\(tuplaObtenida.1).png")
        
        UIView.animateWithDuration(0.25, delay: 0.0, options: [], animations: {
            self.imgBandera.alpha = 0.25
            }, completion: {(_) -> Void in
                UIView.animateWithDuration(0.25, delay: 0.0, options: [], animations: {
                    self.imgBandera.alpha = 1.0
                    }, completion: nil)
        })
        
        self.lblHamburguesa.text = self.coleccionDeHamburguesas.obtenHamburguesa()
        self.imgHamburguesa.image = UIImage(named: self.coleccionDeHamburguesas.obtenerImagenHamburguesa())
        
        UIView.animateWithDuration(0.25, delay: 0.0, options: [], animations: {
            self.imgHamburguesa.alpha = 0.25
            }, completion: {(_) -> Void in
                UIView.animateWithDuration(0.25, delay: 0.0, options: [], animations: {
                    self.imgHamburguesa.alpha = 1.0
                    }, completion: nil)
        })
    }
}

