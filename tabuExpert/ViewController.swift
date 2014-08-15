//
//  ViewController.swift
//  tabuExpert
//
//  Created by Dennis de Oliveira on 14/08/14.
//  Copyright (c) 2014 Dennis de Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tabuadaSelecionada:Int = 0
    
    @IBOutlet weak var barraOpcoes: UISegmentedControl!
    @IBOutlet weak var botaoIniciar: UIButton!
    
    @IBOutlet weak var numUm: UIButton!
    @IBOutlet weak var numDois: UIButton!
    @IBOutlet weak var numTres: UIButton!
    @IBOutlet weak var numQuatro: UIButton!
    @IBOutlet weak var numCinco: UIButton!
    @IBOutlet weak var numSeis: UIButton!
    @IBOutlet weak var numSete: UIButton!
    @IBOutlet weak var numOito: UIButton!
    @IBOutlet weak var numNove: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Ações carregadas no início
        tabuadaSelect(1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tabuadaDeselect(tabuada:Int) {
        
        // Declaração de um array com as tabuadas e variáveis de botão
        var tabelaTabuada = [
            1: numUm,
            2: numDois,
            3: numTres,
            4: numQuatro,
            5: numCinco,
            6: numSeis,
            7: numSete,
            8: numOito,
            9: numNove
        ]
        
        for (numTabuada, numTemp) in tabelaTabuada {
            if(numTabuada != tabuada) {
                // Altera o valor selected da variável atual
                //println(numTabuada)
                numTemp.selected = false
                
            }
        }
    }
    
    
    // Função para selecionar os botoes de tabuada
    func tabuadaSelect(tabuada: Int){
        
        switch tabuada {
            case (1):
                
                numUm.selected = true
                tabuadaDeselect(1)
            
            case (2):
                
                numDois.selected = true
                tabuadaDeselect(2)
            
            
            case (3):
                
                numTres.selected = true
                tabuadaDeselect(3)
            
            case (4):
                
                numQuatro.selected = true
                tabuadaDeselect(4)
            
            case (5):
                
                numCinco.selected = true
                tabuadaDeselect(5)
            
            case (6):
                
                numSeis.selected = true
                tabuadaDeselect(6)
            
            case (7):
                
                numSete.selected = true
                tabuadaDeselect(7)
            
            case (8):
                
                numOito.selected = true
                tabuadaDeselect(8)
            
            case (9):
                
                numNove.selected = true
                tabuadaDeselect(9)
            
            default:
                println("Default Case")
                /*numUm.selected = false
                numDois.selected = false
                numTres.selected = false
                numQuatro.selected = false
                numCinco.selected = false
                numSeis.selected = false
                numSete.selected = false
                numOito.selected = false
                numNove.selected = false*/
        }
        
        
    }
    
    // Função para carregar uma Segunda ViewController
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        if(segue.identifier == "seguePerguntas") {
            
            var segueTela = segue!.destinationViewController as PerguntasViewController;
            
            // Realiza o envio da variável
            segueTela.tabuadaSelecionada = tabuadaSelecionada
            segueTela.ordemSelecionada = barraOpcoes.titleForSegmentAtIndex(barraOpcoes.selectedSegmentIndex)
            
        } else if(segue.identifier == "segueHistorico") {
            
            var segueTela = segue!.destinationViewController as HistoricoViewController
            
        }
        
    }
    
    // Ações nos botões numéricos da home
    @IBAction func clickBotaoUm(sender: AnyObject) {
        
        tabuadaSelecionada = 1
        
        println("Clique num 1")
        //println("Tabuada selecionada: \(tabuadaSelecionada)")
        
        tabuadaSelect(1)
        
    }
    
    @IBAction func clickBotaoDois(sender: AnyObject) {
        
        //numDois.selected = true
        
        tabuadaSelecionada = 2
        
        println("Clique num 2")
        
        tabuadaSelect(2)
        
    }
    
    @IBAction func clickBotaoTres(sender: AnyObject) {
        
        tabuadaSelecionada = 3
        
        println("Clique num 3")
        
        tabuadaSelect(3)
        
    }
    
    @IBAction func clickBotaoQuatro(sender: AnyObject) {
        
        tabuadaSelecionada = 4
        
        println("Clique num 4")
        
        tabuadaSelect(4)
        
    }
    
    @IBAction func clickBotaoCinco(sender: AnyObject) {
        
        tabuadaSelecionada = 5
        
        println("Clique num 5")
        
        tabuadaSelect(5)
        
    }
    
    @IBAction func clickBotaoSeis(sender: AnyObject) {
        
        tabuadaSelecionada = 6
        
        println("Clique num 6")
        
        tabuadaSelect(6)
        
    }
    
    @IBAction func clickBotaoSete(sender: AnyObject) {
        
        tabuadaSelecionada = 7
        
        println("Clique num 7")
        
        tabuadaSelect(7)
        
    }
    
    @IBAction func clickBotaoOito(sender: AnyObject) {
        
        tabuadaSelecionada = 8
        
        println("Clique num 8")
        
        tabuadaSelect(8)
        
    }
    
    @IBAction func clickBotaoNove(sender: AnyObject) {
        
        tabuadaSelecionada = 9
        
        println("Clique num 9")
        
        tabuadaSelect(9)
        
    }
    
    // Função disparada sempre que é feita uma alteração na barra
    @IBAction func alteracaoBarraOpcoes(sender: AnyObject) {
        
        // Variável que armazena a opcao selecionada
        var opcaotitle = barraOpcoes.titleForSegmentAtIndex(barraOpcoes.selectedSegmentIndex)
        var opcaoIndex = barraOpcoes.selectedSegmentIndex
        
        println("Título: \(opcaotitle)")
        println("Index: \(opcaoIndex)")
        
    }
    
    // Função disparada quando clicado botão iniciar
    @IBAction func clickBotaoIniciar(sender: AnyObject) {
        println("Clique no botão iniciar")
        
    }
    

}

