//
//  ResultadoViewController.swift
//  tabuExpert
//
//  Created by Dennis de Oliveira on 18/08/14.
//  Copyright (c) 2014 Dennis de Oliveira. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {
    
    
    
    @IBOutlet weak var botaoVoltarIndex: UIButton!
    @IBOutlet weak var valorView: UILabel!
    @IBOutlet weak var labelPerguntas: UILabel!
    
    //Label perguntas
    @IBOutlet weak var lp1: UILabel!
    @IBOutlet weak var lp2: UILabel!
    @IBOutlet weak var lp3: UILabel!
    @IBOutlet weak var lp4: UILabel!
    @IBOutlet weak var lp5: UILabel!
    @IBOutlet weak var lp6: UILabel!
    @IBOutlet weak var lp7: UILabel!
    @IBOutlet weak var lp8: UILabel!
    @IBOutlet weak var lp9: UILabel!
    
    
    // Variáveis para troca de informações entre as views
    var textoViewPergunta:String?
    //var tabelaRespostas:[Int:Int]?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // Carrega o valor da view Pergunta
        valorView.text = textoViewPergunta
        
        // Código para ocultar a barra de navegação
        self.navigationController.setNavigationBarHidden(true, animated: true)
        
        // Oculta o botão voltar
        //self.navigationItem.setHidesBackButton(true, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func clickVoltarIndex(sender: AnyObject) {
        
        // Carrega a view anterior
        
        // Carregar a view resultado via código
        let irParaIndex = self.storyboard.instantiateViewControllerWithIdentifier("telaIndex") as ViewController
        self.navigationController.pushViewController(irParaIndex, animated: true)
    }

}
