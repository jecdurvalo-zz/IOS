//
//  ViewController.swift
//  Exemplo1_Rest_IOS_Swift
//
//  Created by Usuário Convidado on 03/09/2018.
//  Copyright © 2018 Agesandro Scarpioni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var minhaImagem: UIImageView!
    @IBOutlet weak var local: UILabel!
    @IBOutlet weak var estado: UILabel!
    @IBOutlet weak var qtd: UILabel!
    
    var session:URLSession?
    var quantidade = 0
    
    @IBAction func exibir(_ sender: Any) {
        //cria uma configuração de sessão padrão
        let config = URLSessionConfiguration.default
        //cria uma sessão com a configuração default criada acima
        session = URLSession(configuration: config)
        //cria uma url para buscar os dados
        let url = URL(string: "https://parks-api.herokuapp.com/parks/577024e4a44821110001ee93")
        
        let task = session?.dataTask(with: url!, completionHandler: { (data, response, error) in
            //ações que serão efetuada quando a execução da task se completa
            //let texto = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            //print(texto!)
            
            if let nPQ = self.retornar(data: data!, chave: "nome"){
                // assume thread principal
                DispatchQueue.main.async {
                    self.local.text = nPQ
                }
            }
            
            if let ePQ = self.retornar(data: data!, chave: "estado"){
                // assume thread principal
                DispatchQueue.main.async {
                    self.local.text = ePQ
                }
            }
            
            if let appImagemURL = self.retornar(data: data!, chave: "urlFoto"){
                DispatchQueue.main.async {
                    self.carregarImagemURL(imagemURL: appImagemURL)
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
            if let nomeParque = json[chave] as? String{
                resposta = nomeParque
            }
            
            if let estadoParque = json[chave] as? String{
                resposta = estadoParque
            }
            
        }catch let error as NSError{
            resposta = "Falha ao carregar \(error.localizedDescription)"
        }
        return resposta
        
    }
    
    func carregarImagemURL(imagemURL:String){
        //Cria uma URL da string imagemURL
        let myURL = URL(string: imagemURL)
        let url = URLRequest(url: myURL!)
        //cria uma task do tipo Download
        let session = URLSession.shared
        let task = session.dataTask(with: url, completionHandler: { (data, response, error) in
            //se resposta = not null recebe o binário da imagem
            if let imagemData = data{
                //transforma o binário em UIImage e atualzia at ela da thread principal
                DispatchQueue.main.async {
                    self.minhaImagem.image = UIImage(data: imagemData)
                }
            }
        })
        //disparo da execuçao da task
        task.resume()
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

