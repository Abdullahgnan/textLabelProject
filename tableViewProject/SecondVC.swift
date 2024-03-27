//
//  SecondVC.swift
//
//  Created by ABDULLAH GÜNAN on 27.03.2024.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelText: UILabel!
    
    var selectedText = ""
    var selectedImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = selectedImage
        labelText.text = selectedText
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
