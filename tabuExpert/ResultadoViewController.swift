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
    
    //Label respostas
    @IBOutlet weak var lr1: UILabel!
    @IBOutlet weak var lr2: UILabel!
    @IBOutlet weak var lr3: UILabel!
    @IBOutlet weak var lr4: UILabel!
    @IBOutlet weak var lr5: UILabel!
    @IBOutlet weak var lr6: UILabel!
    @IBOutlet weak var lr7: UILabel!
    @IBOutlet weak var lr8: UILabel!
    @IBOutlet weak var lr9: UILabel!
    
    // Label resposta correta
    @IBOutlet weak var lrc1: UILabel!
    @IBOutlet weak var lrc2: UILabel!
    @IBOutlet weak var lrc3: UILabel!
    @IBOutlet weak var lrc4: UILabel!
    @IBOutlet weak var lrc5: UILabel!
    @IBOutlet weak var lrc6: UILabel!
    @IBOutlet weak var lrc7: UILabel!
    @IBOutlet weak var lrc8: UILabel!
    @IBOutlet weak var lrc9: UILabel!
    
    // Label resultado
    @IBOutlet weak var lrs1: UILabel!
    @IBOutlet weak var lrs2: UILabel!
    @IBOutlet weak var lrs3: UILabel!
    @IBOutlet weak var lrs4: UILabel!
    @IBOutlet weak var lrs5: UILabel!
    @IBOutlet weak var lrs6: UILabel!
    @IBOutlet weak var lrs7: UILabel!
    @IBOutlet weak var lrs8: UILabel!
    @IBOutlet weak var lrs9: UILabel!

    
    // Variáveis para troca de informações entre as views
    var tabuadaSelecionada:Int!
    var tabelaRespostas:[Int:Int] = [0:0]
    
    var resultadoCorreto   = "✔︎"
    var resultadoIncorreto = "✗"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Carrega o valor da view Pergunta
        
        for(pergunta, resposta) in tabelaRespostas {
            
            switch pergunta {
                
                case 1:
                    lp1.text = "\(tabuadaSelecionada)x\(pergunta)"
                    lr1.text = toString(resposta)
                    lrc1.text = toString(tabuadaSelecionada * pergunta)
                    
                    if(resposta != (tabuadaSelecionada * pergunta)) {
                        lrs1.text = resultadoIncorreto
                        lrs1.textColor = UIColor .redColor()
                    }
                    else
                    {
                        lrs1.text = resultadoCorreto
                    }
                    
                    break
                
                case 2:
                    lp2.text = "\(tabuadaSelecionada)x\(pergunta)"
                    lr2.text = toString(resposta)
                    lrc2.text = toString(tabuadaSelecionada * pergunta)
                    
                    if(resposta != (tabuadaSelecionada * pergunta)) {
                        lrs2.text = resultadoIncorreto
                        lrs2.textColor = UIColor .redColor()
                    }
                    else
                    {
                        lrs2.text = resultadoCorreto
                    }
                    
                    break
                
                case 3:
                    lp3.text = "\(tabuadaSelecionada)x\(pergunta)"
                    lr3.text = toString(resposta)
                    lrc3.text = toString(tabuadaSelecionada * pergunta)
                    
                    if(resposta != (tabuadaSelecionada * pergunta)) {
                        lrs3.text = resultadoIncorreto
                        lrs3.textColor = UIColor .redColor()
                    }
                    else
                    {
                        lrs3.text = resultadoCorreto
                    }
                    
                    break

                case 4:
                    lp4.text = "\(tabuadaSelecionada)x\(pergunta)"
                    lr4.text = toString(resposta)
                    lrc4.text = toString(tabuadaSelecionada * pergunta)
                    
                    if(resposta != (tabuadaSelecionada * pergunta)) {
                        lrs4.text = resultadoIncorreto
                        lrs4.textColor = UIColor .redColor()
                    }
                    else
                    {
                        lrs4.text = resultadoCorreto
                    }
                    
                    break

                case 5:
                    lp5.text = "\(tabuadaSelecionada)x\(pergunta)"
                    lr5.text = toString(resposta)
                    lrc5.text = toString(tabuadaSelecionada * pergunta)
                    
                    if(resposta != (tabuadaSelecionada * pergunta)) {
                        lrs5.text = resultadoIncorreto
                        lrs5.textColor = UIColor .redColor()
                    }
                    else
                    {
                        lrs5.text = resultadoCorreto
                    }
                    
                    break

                case 6:
                    lp6.text = "\(tabuadaSelecionada)x\(pergunta)"
                    lr6.text = toString(resposta)
                    lrc6.text = toString(tabuadaSelecionada * pergunta)
                    
                    if(resposta != (tabuadaSelecionada * pergunta)) {
                        lrs6.text = resultadoIncorreto
                        lrs6.textColor = UIColor .redColor()
                    }
                    else
                    {
                        lrs6.text = resultadoCorreto
                    }
                    
                    break

                case 7:
                    lp7.text = "\(tabuadaSelecionada)x\(pergunta)"
                    lr7.text = toString(resposta)
                    lrc7.text = toString(tabuadaSelecionada * pergunta)
                    
                    if(resposta != (tabuadaSelecionada * pergunta)) {
                        lrs7.text = resultadoIncorreto
                        lrs7.textColor = UIColor .redColor()
                    }
                    else
                    {
                        lrs7.text = resultadoCorreto
                    }
                    
                    break

                case 8:
                    lp8.text = "\(tabuadaSelecionada)x\(pergunta)"
                    lr8.text = toString(resposta)
                    lrc8.text = toString(tabuadaSelecionada * pergunta)
                    
                    if(resposta != (tabuadaSelecionada * pergunta)) {
                        lrs8.text = resultadoIncorreto
                        lrs8.textColor = UIColor .redColor()
                    }
                    else
                    {
                        lrs8.text = resultadoCorreto
                    }
                    
                    break

                case 9:
                    lp9.text = "\(tabuadaSelecionada)x\(pergunta)"
                    lr9.text = toString(resposta)
                    lrc9.text = toString(tabuadaSelecionada * pergunta)
                    
                    if(resposta != (tabuadaSelecionada * pergunta)) {
                        lrs9.text = resultadoIncorreto
                        lrs9.textColor = UIColor .redColor()
                    }
                    else
                    {
                        lrs9.text = resultadoCorreto
                    }
                    
                    break
                
                default:
                    break
            }
            
        }
        
        // Código para ocultar a barra de navegação
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
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
        let irParaIndex = self.storyboard?.instantiateViewControllerWithIdentifier("telaIndex") as ViewController
        self.navigationController?.pushViewController(irParaIndex, animated: true)
    }

}
