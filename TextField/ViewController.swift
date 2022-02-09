//
//  ViewController.swift
//  TextField
//
//  Created by Brendon Zach on 2/8/22.
//

import UIKit
//Corner radius Extension for the Button.
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
class ViewController: UIViewController
{
   //declare outlet variables for the label and text field
    //Public or Global Variables. This means I can use these throughout the entire class.
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var textOutlet: UITextField!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //This function takes the text form the text from the text field and displays it on the label when the button is pressed.
    @IBAction func buttonToLabelFunction(_ sender: UIButton)
    {
        //The double question mark is called an optional.  It stores the data to the right of the double questionmark as a deafult value if nothing is entered.
        labelOutlet.text = textOutlet.text ?? "Brendon"
        
        //Local Variable. Can only be used in this function.
        
        var BrendonisCool = textOutlet.text
        
    }
    
}

