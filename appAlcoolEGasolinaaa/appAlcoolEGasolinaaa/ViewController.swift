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
    }
}

extension ViewController :UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        
        return true
        
    }
    
}
