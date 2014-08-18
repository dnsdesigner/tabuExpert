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
    
    // Variáveis para troca de informações entre as views
    var textoViewPergunta:String?
    var tabelaRespostas:[Int:Int]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Ajusta a label perguntas
        
        
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controll using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func clickVoltarIndex(sender: AnyObject) {
        
        // Carrega a view anterior
        
        // Carregar a view resultado via código
        let irParaIndex = self.storyboard.instantiateViewControllerWithIdentifier("telaIndex") as ViewController
        self.navigationController.pushViewController(irParaIndex, animated: true)
    }

}
