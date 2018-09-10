//
//  ViewController.swift
//  Exer=1-CEP
//
//  Created by Usuário Convidado on 10/09/2018.
//  Copyright © 2018 Joana Durvalo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtCep: UITextField!
    @IBOutlet weak var txtRua: UITextField!
    
    var session:URLSession?
    var quantidade = 0
    
    @IBAction func ok(_ sender: Any) {
        
        let config = URLSessionConfiguration.default
        //cria uma sessão com a configuração default criada acima
        session = URLSession(configuration: config)
        //cria uma url para buscar os dados
        let url = URL(string: "viacep.com.br/ws/\(txtCep)/json")
        
        let task = session?.dataTask(with: url!, completionHandler: { (data, response, error) in
            //ações que serão efetuada quando a execução da task se completa
            //let texto = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            //print(texto!)
            
            if let nomeRua = self.retornar(data: data!, chave: "logradouro"){
                // assume thread principal
                DispatchQueue.main.async {
                    self.txtRua.text = nomeRua
                }
            }
            
        })
        
        //disparo da execução da task acima
        task?.resume()
    }
    
    func retornar(data:Data, chave:String)->String?{
        var resposta:String?=nil
        do {
            //a linha abaixo faz a leitura dos valores do Json
            //NSJSONSerialization faz o Parser do Json
            let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String: AnyObject]
            if let cep = json[chave] as? String{
                resposta = cep
            }
            
        }catch let error as NSError{
            resposta = "Falha ao carregar \(error.localizedDescription)"
        }
        return resposta
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

