//
//  ViewController.swift
//  Table
//
//  Created by Gerardo Ruiz  on 9/25/19.
//  Copyright © 2019 Gerardo Ruiz . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var contenidoCeldas = ["pdf1","pdf2","pdf3"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contenidoCeldas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        celda.imageView!.image = UIImage(named: "Libro.jpg")
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "pantalla2Segue", sender: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            contenidoCeldas.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .middle)
            tableView.endUpdates()
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pantalla2Segue" {
            
            let objPantalla2:ViewController2 = segue.destination as! ViewController2
            
            objPantalla2.nombrePDFRecibido = contenidoCeldas[sender as! Int]
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Se activo la func viewDidLoad del VC de la pantalla 1")
        
        
    }

    //Funciones del ciclo de VIDA del ViewController
    override func loadView() {
        super.loadView()
        print("Se activo la func loadView del VC de la pantalla 1")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la func viewWillAppear del VC de la pantalla 1")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Se activo la func viewDidAppear del VC de la pantalla 1")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("Se activo la func viewWillDisappear del VC de la pantalla 1")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activo la func viewDidDisappear del VC de la pantalla 1")
    }
    
    override func didReceiveMemoryWarning() {
        print("Se activo didReceiveMemoryWarning del VC de la pantalla 1")
    }

}

