//
//  HistoricoViewController.swift
//  tabuExpert
//
//  Created by Dennis de Oliveira on 15/08/14.
//  Copyright (c) 2014 Dennis de Oliveira. All rights reserved.
//

import UIKit

class HistoricoViewController: UIViewController {
    
    @IBOutlet weak var botaoVoltarIndex: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Código para ocultar a barra de navegação
        self.navigationController?.setNavigationBarHidden(true, animated: true)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickVoltarIndex(sender: AnyObject) {
        
        // Carrega a view anterior
        
        // Carregar a view resultado via código
        let irParaIndex = self.storyboard?.instantiateViewControllerWithIdentifier("telaIndex") as ViewController
        self.navigationController?.pushViewController(irParaIndex, animated: true)
    }
    

}
