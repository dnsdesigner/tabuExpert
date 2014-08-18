//
//  PerguntasViewController.swift
//  tabuExpert
//
//  Created by Dennis de Oliveira on 15/08/14.
//  Copyright (c) 2014 Dennis de Oliveira. All rights reserved.
//

/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
// Get the new view controller using segue.destinationViewController.
// Pass the selected object to the new view controller.
}
*/


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
    
    var tabelaTabuada:[Int:Int] = [
        1:0,
        2:0,
        3:0,
        4:0,
        5:0,
        6:0,
        7:0,
        8:0,
        9:0
    ]
    var indiceTabuada = 1
    
    // Variável de troca de informação entre as Views
    var tabuadaSelecionada:Int!
    var ordemSelecionada:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tituloPergunta.text = "Tabuada do \(tabuadaSelecionada) - \(ordemSelecionada)"
        tituloCalculo.text = "\(tabuadaSelecionada) x \(indiceTabuada) ="
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Função para carregar uma Segunda ViewController
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        if(segue.identifier == "segueResultado") {
            
            var segueTela = segue!.destinationViewController as ResultadoViewController;
            
            // Realiza o envio da variável
            /*segueTela.tabuadaSelecionada = tabuadaSelecionada
            segueTela.ordemSelecionada = barraOpcoes.titleForSegmentAtIndex(barraOpcoes.selectedSegmentIndex)*/
            
        }
    }
    
    func validaVisor(botao:Int) {
        
        var resposta:String = visorResposta.text
        
        if(resposta.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)<2) {
            resposta += toString(botao)
            visorResposta.text = resposta
        }
        
    }
    
    @IBAction func clickBotaoConfirma(sender: AnyObject) {
        println("Clique botão Confirma")
        println(indiceTabuada)
        
        // Verifica e foi digitado algo como resposta
        var resposta:String = visorResposta.text
        if(resposta.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)<=0)
        {
            // Exibe uma tela de alerta caso não tenha uma resposta digitada
            /*var telaAlert = UIAlertController(title: "Alerta",
                message: "É necessário digitar uma resposta",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            telaAlert.addAction(UIAlertAction(title: "Ok",
                style: UIAlertActionStyle.Default, handler: nil))
            
            //self.presentViewController(telaAlert, animated: true, completion: nil)
            
            */
            
            var alert: UIAlertView = UIAlertView()
            alert.title = "Atenção"
            alert.message = "Digite uma resposta"
            alert.addButtonWithTitle("Ok")
            alert.show()
            
        }
        else
        {
            // Grava a resposta no array de tabela da tabuada
            tabelaTabuada[indiceTabuada] = resposta.toInt()
            
            if(indiceTabuada<9) {
                
                // Soma mais 1 no índice
                ++indiceTabuada
                
                // Limpa o visor
                visorResposta.text = ""
                
                tituloCalculo.text = "\(tabuadaSelecionada) x \(indiceTabuada) ="
            }
            else if(indiceTabuada==9)
            {
               for(numIndice, numResposta) in tabelaTabuada
               {
                    println("Indice: \(numIndice) | Resposta: \(numResposta)")
                
                }
                
                // Carregar a view resultado via código
                let telaResultado = self.storyboard.instantiateViewControllerWithIdentifier("telaResultado") as ResultadoViewController
                self.navigationController.pushViewController(telaResultado, animated: true)
                
            }
        }
        
        
        
        
    }
    
    @IBAction func clickBotaoCancela(sender: AnyObject) {
        println("Clique botão Cancela")
        visorResposta.text = ""
    }
    
    @IBAction func clickBotaoNum0(sender: AnyObject) {
        println("Clique botão num 0")
        validaVisor(0)
    }
    
    @IBAction func clickBotaoNum1(sender: AnyObject) {
        println("Clique botão num 1")
        validaVisor(1)
    }

    @IBAction func clickBotaoNum2(sender: AnyObject) {
        println("Clique botão num 2")
        validaVisor(2)
    }

    @IBAction func clickBotaoNum3(sender: AnyObject) {
        println("Clique botão num 3")
        validaVisor(3)
    }

    @IBAction func clickBotaoNum4(sender: AnyObject) {
        println("Clique botão num 4")
        validaVisor(4)
    }

    @IBAction func clickBotaoNum5(sender: AnyObject) {
        println("Clique botão num 5")
        validaVisor(5)
    }

    @IBAction func clickBotaoNum6(sender: AnyObject) {
        println("Clique botão num 6")
        validaVisor(6)
    }

    @IBAction func clickBotaoNum7(sender: AnyObject) {
        println("Clique botão num 7")
        validaVisor(7)
    }

    @IBAction func clickBotaoNum8(sender: AnyObject) {
        println("Clique botão num 8")
        validaVisor(8)
    }

    @IBAction func clickBotaoNum9(sender: AnyObject) {
        println("Clique botão num 9")
        validaVisor(9)
    }

    
    

}
