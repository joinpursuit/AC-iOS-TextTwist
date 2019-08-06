//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit
class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var lettersLabels: UILabel!
    let userStored = TextTwistModel.init()
    @IBOutlet weak var userInputOut: UITextField!
    @IBOutlet var myTextsFields: [UITextView]!
    @IBAction func checkLetters(_ sender: UITextField) {
        if userStored.allWords.letters.contains(sender.text!){
        } else {
            
        }
    }
    @IBAction func userInput(_ sender: UITextField) {
        
        if userStored.checkInput(word: sender.text!){
            if sender.text!.count == 3 {
                myTextsFields[0].text += "\n" + sender.text!
            }else  if sender.text!.count == 4 {
                myTextsFields[1].text += "\n" + sender.text!
            }else  if sender.text!.count == 5 {
                myTextsFields[2].text += "\n" + sender.text!
            }else if   sender.text!.count == 6{
                myTextsFields[3].text += "\n" + sender.text!
        }
        }}
    override func viewDidLoad() {
        super.viewDidLoad()
     userInputOut.delegate = self
    lettersLabels.text = userStored.allWords.letters
    }

    }

