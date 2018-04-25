//
//  ViewController.swift
//  BitcoinApp
//
//  Created by Stephanie Zuniga on 4/21/18.
//  Copyright © 2018 Stephanie Zuniga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Se establece el precio del bitcoin en dolares
    let bitcoin: Double = 10
    //Funcion de compra de Bitcoins recibe como parametro la cantidad de dolares y retorna la cantida de bitcoins
    //Si no alcanza devuelve nil
    //Si sobran dolares compra llama a change y change devuelve el cambio
    
    func Cambio(cantidad: Int, dolars: Double)->Double
    {
        var cambio: Double = 0
        cambio = dolars - (Double(cantidad) * bitcoin)
        print("El cambio es: \(cambio)")
        return cambio
    }
    
    func CompraBitcoins(dolares: Double)->Int?
    {
        var cant:Int = 0
        if(dolares > bitcoin)
        {
            cant = Int(floor(dolares/bitcoin))
            Cambio(cantidad: cant, dolars: dolares)
            return cant
        }else if(dolares == bitcoin){
            cant = 1
            return cant
        }else{
            return nil
        }
    }
}

