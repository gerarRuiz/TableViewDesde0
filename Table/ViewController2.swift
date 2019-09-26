//
//  ViewController2.swift
//  Table
//
//  Created by Gerardo Ruiz  on 9/25/19.
//  Copyright © 2019 Gerardo Ruiz . All rights reserved.
//

import UIKit
import WebKit

class ViewController2: UIViewController {

    @IBOutlet var vistaWeb: WKWebView!
    
    var nombrePDFRecibido:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        habilitarZoom()
        print("Se activo la func viewDidLoad del VC de la pantalla 2")
        mostrarPDF()
    }
    
    func habilitarZoom() {
        vistaWeb.contentMode = .scaleToFill
    }
    
    func mostrarPDF() {
        
        //1 Conseguir url del archivo con objeto tipo url
        
        let direccionPDF = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePDFRecibido!, ofType: "pdf", inDirectory: "PDF")!)
        

        //2 Transformar archivo PDF a data
        
        let datosPDF = try? Data(contentsOf: direccionPDF)
        
        
        //3 Mostrar datos en el webview
        
        vistaWeb.load(datosPDF!, mimeType: "application/pdf", characterEncodingName: "utf_8", baseURL: direccionPDF)
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //Funciones del ciclo de VIDA del ViewController
    override func loadView() {
        super.loadView()
        print("Se activo la func loadView del VC de la pantalla 2")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la func viewWillAppear del VC de la pantalla 2")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Se activo la func viewDidAppear del VC de la pantalla 2")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("Se activo la func viewWillDisappear del VC de la pantalla 2")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activo la func viewDidDisappear del VC de la pantalla 2")
    }
    
    override func didReceiveMemoryWarning() {
        print("Se activo didReceiveMemoryWarning del VC de la pantalla 2")
    }

}
