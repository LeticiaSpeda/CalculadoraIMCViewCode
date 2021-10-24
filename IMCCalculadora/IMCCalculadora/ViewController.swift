//
//  ViewController.swift
//  IMCCalculadora
//
//  Created by Paolo Prodossimo Lopes on 24/10/21.
//  Copyright © 2021 Leticia de Oliveira Speda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Propriedades:

    let pesoTextField = UITextField()
    let alturaTextField = UITextField()
    let calcularBotao = UIButton(type: .system)
    
    //MARK: - Ciclo de vida:
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        configurarPesoTextField()
        configurarAlturaTextField()
        configurarBotao()
    }
    
    //MARK: - Ajudantes:
    
    func configurarPesoTextField() {
        pesoTextField.placeholder = "Digite seu peso aqui"
        pesoTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pesoTextField)
        pesoTextField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        pesoTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        pesoTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func configurarAlturaTextField() {
        alturaTextField.placeholder = "Digite sua altura"
        alturaTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(alturaTextField)
        alturaTextField.topAnchor.constraint(equalTo: pesoTextField.bottomAnchor, constant: 20).isActive = true
        alturaTextField.centerXAnchor.constraint(equalTo: pesoTextField.centerXAnchor).isActive = true
        alturaTextField.widthAnchor.constraint(equalTo: pesoTextField.widthAnchor).isActive = true
    }
    
    func configurarBotao() {
        calcularBotao.setTitle("Calcule", for: .normal)
        calcularBotao.backgroundColor = .systemPink
        calcularBotao.setTitleColor(.white, for: .normal)
        view.addSubview(calcularBotao)
        calcularBotao.translatesAutoresizingMaskIntoConstraints = false
        calcularBotao.topAnchor.constraint(equalTo: alturaTextField.bottomAnchor, constant: 20).isActive = true
        calcularBotao.centerXAnchor.constraint(equalTo: alturaTextField.centerXAnchor).isActive = true
        calcularBotao.widthAnchor.constraint(equalTo: alturaTextField.widthAnchor).isActive = true
        calcularBotao.addTarget(self, action: #selector(botaoCalcularIMC), for: .touchUpInside)
    }
    
    //MARK: - Seletores:
    
    @objc func botaoCalcularIMC() {
       
    }

}

