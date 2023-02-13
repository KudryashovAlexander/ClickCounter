//
//  ViewController.swift
//  ClickCounterAK
//
//  Created by Александр Кудряшов on 12.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
//MARK: - Outlets
    @IBOutlet weak var labelCounter: UILabel!
    @IBOutlet weak var buttonRestartOutlet: UIButton!
    @IBOutlet weak var buttonClickOutlet: UIButton!
    private var count = 0 {
        didSet {
            counter()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Внешний вид
        labelView()
        buttonRestartView()
        buttonClickView()
    }

//MARK: - Actions
    @IBAction func buttonRestartAction(_ sender: Any) {
        count = 0
    }
    
    @IBAction func buttonClickAction(_ sender: Any) {
        count += 1
    }

    //MARK: - Appearance
    //Внешний вид лейбла
    private func labelView(){
        labelCounter.font = UIFont(name:"Arial", size: 30.0)
        labelCounter.numberOfLines = 2
        counter()
    }
    private func counter() {
        labelCounter.text = "Значение счётчика:" + "\n" + String(count)
    }
    //внешний вид кнопки "Рестарт"
    private func buttonRestartView(){
        buttonRestartOutlet.setImage(UIImage(systemName: "return"), for: .normal)
        buttonRestartOutlet.titleLabel?.text = "Restart"
        buttonRestartOutlet.titleLabel?.tintColor = .gray
        buttonRestartOutlet.imageView?.tintColor = .gray
        buttonRestartOutlet.titleLabel?.font = UIFont.systemFont(ofSize: 20.0)
    }
    //внешний вид кнопки "клик"
    private func buttonClickView(){
        buttonClickOutlet.backgroundColor = .gray
        buttonClickOutlet.titleLabel?.text = "CLICK"
        buttonClickOutlet.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        buttonClickOutlet.setTitleColor(.white, for: .normal)
        buttonClickOutlet.layer.cornerRadius = 13
    }
      
}


