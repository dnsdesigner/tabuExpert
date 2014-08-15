//
//  PerguntasViewController.swift
//  tabuExpert
//
//  Created by Dennis de Oliveira on 15/08/14.
//  Copyright (c) 2014 Dennis de Oliveira. All rights reserved.
//

import UIKit

class PerguntasViewController: UIViewController {
    
    @IBOutlet weak var tituloPergunta: UILabel!
    
    @IBOutlet weak var tituloCalculo: UILabel!
    
    // Variável de troca de informação entre as Views
    var tabuadaSelecionada:Int!
    var ordemSelecionada:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tituloPergunta.text = "Tabuada do \(tabuadaSelecionada) - \(ordemSelecionada)"
        tituloCalculo.text = "\(tabuadaSelecionada) x 1 ="
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
