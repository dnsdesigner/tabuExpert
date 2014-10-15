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
    @IBOutlet weak var visorResposta: UILabel!
    @IBOutlet weak var botaoConfirma: UIButton!
    @IBOutlet weak var botaoCancela: UIButton!
    @IBOutlet weak var botaoNum0: UIButton!
    @IBOutlet weak var botaoNum1: UIButton!
    @IBOutlet weak var botaoNum2: UIButton!
    @IBOutlet weak var botaoNum3: UIButton!
    @IBOutlet weak var botaoNum4: UIButton!
    @IBOutlet weak var botaoNum5: UIButton!
    @IBOutlet weak var botaoNum6: UIButton!
    @IBOutlet weak var botaoNum7: UIButton!
    @IBOutlet weak var botaoNum8: UIButton!
    @IBOutlet weak var botaoNum9: UIButton!
    
    // Variável de troca de informação entre as Views
    var tabuadaSelecionada:Int!
    var ordemSelecionada:Int!
    var ordemSelecionadaTitle:String!
    
    // Arrays de tabuada
    var tabelaTabuada:[Int:Int] = [1:0, 2:0, 3:0, 4:0, 5:0, 6:0, 7:0, 8:0, 9:0]
    
    var tabelaTabuadaSequencial:[Int:Int] = [1:1, 2:2, 3:3, 4:4, 5:5, 6:6, 7:7, 8:8, 9:9]
    var tabelaTabuadaInversa:[Int:Int] = [1:9, 2:8, 3:7, 4:6, 5:5, 6:4, 7:3, 8:2, 9:1]

    var indiceTabuada:Int = 0
    var indiceTabuadaInverso:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Informações carregadas após a view ser carregada
        
        indiceTabuada=1
        indiceTabuadaInverso = tabelaTabuadaInversa[indiceTabuada]!
        
        
        // Adiciona os títulos nas labels de ínicio
        tituloPergunta.text = "Tabuada do \(tabuadaSelecionada) - \(ordemSelecionadaTitle)"
        
        // Verifica a ordem selecionada e exibe na tela o cálculo inicial
        if(ordemSelecionada==0) {
            
            tituloCalculo.text = "\(tabuadaSelecionada) x \(indiceTabuada) ="
            
        }
        else if(ordemSelecionada==1) {
            
            tituloCalculo.text = "\(tabuadaSelecionada) x \(indiceTabuadaInverso) ="
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if(segue.identifier=="segueResultado") {
            
            // Prepara os dados para enviar para a tela de Resultado
            let telaResultado = segue.destinationViewController as ResultadoViewController
            
            telaResultado.tabuadaSelecionada = tabuadaSelecionada
            telaResultado.tabelaRespostas = tabelaTabuada
        }
        
    }
    
    func validaVisor(botao:Int) {
        
        var resposta:String = visorResposta.text!
        
        if(resposta.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)<2) {
            resposta += toString(botao)
            visorResposta.text = resposta
        }
        
    }
    
    @IBAction func clickBotaoConfirma(sender: AnyObject) {
        
        //println("Clique botão Confirma")
        
        // Verifica e foi digitado algo como resposta
        var resposta:String = visorResposta.text!
        
        if(resposta.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)<=0)
        {
            // Exibe uma tela de alerta caso não tenha uma resposta digitada
            var alert: UIAlertView = UIAlertView()
            alert.title = "Atenção"
            alert.message = "Digite uma resposta"
            alert.addButtonWithTitle("Ok")
            alert.show()
            
        }
        else
        {
            // Verifica a ordem selecionada e Grava o resultado na posição correta da tabela
            if(ordemSelecionada==0) {
                
                // Grava a resposta no array de tabela da tabuada
                tabelaTabuada[indiceTabuada] = resposta.toInt()
                
            }
            else if(ordemSelecionada==1) {
                
                // Grava a resposta no array de tabela da tabuada
                tabelaTabuada[indiceTabuadaInverso] = resposta.toInt()
                
            }
            
            //Printa a informação para verificar os valores passados
            println("Indice sequencial: \(indiceTabuada)")
            println("Indice inverso: \(indiceTabuadaInverso)")
            println("Resposta: \(resposta.toInt())")
            
            
            if(indiceTabuada<9) {
                
                // Soma mais 1 no índice
                ++indiceTabuada
                
                // Atualizo o indice da tabuada inverso
                indiceTabuadaInverso = tabelaTabuadaInversa[indiceTabuada]!
                
                // Limpa o visor
                visorResposta.text = ""
                
                // Verifica a ordem selecionada e exibe na tela o cálculo inicial
                if(ordemSelecionada==0) {
                    
                    tituloCalculo.text = "\(tabuadaSelecionada) x \(indiceTabuada) ="
                    
                }
                else if(ordemSelecionada==1) {
                    
                    tituloCalculo.text = "\(tabuadaSelecionada) x \(indiceTabuadaInverso) ="
                    
                }

            }
            else if(indiceTabuada==9)
            {
               for(numIndice, numResposta) in tabelaTabuada
               {
                    println("Indice: \(numIndice) | Resposta: \(numResposta)")
                
                }
                
                /*
                // Carregar a view resultado via código e envia dados para a view
                let telaResultado = self.storyboard.instantiateViewControllerWithIdentifier("telaResultado") as ResultadoViewController
                telaResultado.textoViewPergunta = "Valor enviado pela view Pergunta"
                //telaResultado.tabelaRespostas =  tabelaTabuada
                self.navigationController.pushViewController(telaResultado, animated: true)
                */
                
                self.performSegueWithIdentifier("segueResultado", sender: self)
                
                
            }
        }
        
    }
    
    @IBAction func clickBotaoCancela(sender: AnyObject) {
        //println("Clique botão Cancela")
        visorResposta.text = ""
    }
    
    @IBAction func clickBotaoNum0(sender: AnyObject) {
        //println("Clique botão num 0")
        validaVisor(0)
    }
    
    @IBAction func clickBotaoNum1(sender: AnyObject) {
        //println("Clique botão num 1")
        validaVisor(1)
    }

    @IBAction func clickBotaoNum2(sender: AnyObject) {
        //println("Clique botão num 2")
        validaVisor(2)
    }

    @IBAction func clickBotaoNum3(sender: AnyObject) {
        //println("Clique botão num 3")
        validaVisor(3)
    }

    @IBAction func clickBotaoNum4(sender: AnyObject) {
        //println("Clique botão num 4")
        validaVisor(4)
    }

    @IBAction func clickBotaoNum5(sender: AnyObject) {
        //println("Clique botão num 5")
        validaVisor(5)
    }

    @IBAction func clickBotaoNum6(sender: AnyObject) {
        //println("Clique botão num 6")
        validaVisor(6)
    }

    @IBAction func clickBotaoNum7(sender: AnyObject) {
        //println("Clique botão num 7")
        validaVisor(7)
    }

    @IBAction func clickBotaoNum8(sender: AnyObject) {
        //println("Clique botão num 8")
        validaVisor(8)
    }

    @IBAction func clickBotaoNum9(sender: AnyObject) {
        //println("Clique botão num 9")
        validaVisor(9)
    }

    
    

}
