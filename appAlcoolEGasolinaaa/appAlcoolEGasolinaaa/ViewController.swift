//
//  ViewController.swift
//  appAlcoolEGasolinaaa
//
//  Created by Franklin  Stilhano on 9/29/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    
    @IBOutlet weak var ethanolPriceLabel: UILabel!
    
    @IBOutlet weak var gasPriceLabel: UILabel!
    
    
    @IBOutlet weak var ethanolPriceTextField: UITextField!
    
    
    @IBOutlet weak var gasPriceTextField: UITextField!
    
    
    @IBOutlet weak var calculateButton: UIButton!
    
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configFontEndColors()
    }

    
    func configFontEndColors(){
        view.backgroundColor = .systemGreen
        
//        logoImageView.image = UIImage(named: "")
        ethanolPriceLabel.text = "Preço Álcool"
        gasPriceLabel.text = "Preço Gasolina"
        ethanolPriceLabel.font = UIFont.boldSystemFont(ofSize: 18)
        gasPriceLabel.font = UIFont.boldSystemFont(ofSize: 18)
        gasPriceTextField.placeholder = "Ex: 2.99"
        ethanolPriceTextField.placeholder = "Ex: 1.99"
        
        gasPriceTextField.textAlignment = .center
        ethanolPriceTextField.textAlignment = .center
        
        gasPriceTextField.keyboardType = .decimalPad
        ethanolPriceTextField.keyboardType = .decimalPad
        
        gasPriceTextField.delegate = self
        ethanolPriceTextField.delegate = self
        
        calculateButton.setTitle("Calcular", for: .normal)
        calculateButton.setTitleColor(.white, for: .normal)
        calculateButton.backgroundColor = .blue
        
        resultLabel.text = "Digite os textos"
        resultLabel.textColor = .white
        resultLabel.backgroundColor = .blue
        
        calculateButton.isEnabled = false
        calculateButton.setTitleColor(.white.withAlphaComponent(0.4), for: .disabled)
    }

    @IBAction func tappedCalculateButton(_ sender: UIButton) {
        let ethanoPrice:Double = Double(ethanolPriceTextField.text ?? "") ?? 0.0
        let gasPrice:Double = Double(gasPriceTextField.text ?? "") ?? 0.0
        
        if ethanoPrice / gasPrice > 0.7 {
            resultLabel.text = "Melhor utilizar Gasolina!"
        } else {
            resultLabel.text = "Melhor utilizar Álcool!"
        }

    }
}

extension ViewController :UITextFieldDelegate{
   
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if ethanolPriceTextField.text == "" || gasPriceTextField.text == ""{
            calculateButton.isEnabled = false
        } else {
            calculateButton.isEnabled = true
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
        
    }
    
}
