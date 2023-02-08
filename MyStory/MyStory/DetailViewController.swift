//
//  DetailViewController.swift
//  MyStory
//
//  Created by Andrea Sanchez on 2/7/23.
//

import UIKit

class DetailViewController: UIViewController {
    // IBOutlets

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var text: UITextView!
    
    var characters: charStory?
    

    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let characters = characters {
            print(characters.text)
        // Configure the dinosaur image and dynamic labels
            imageView.image = characters.image
            text.text = characters.text
            
            
            if imageView.image == UIImage(named: "princessSerenity")! {
                self.title = "Backstory"

            }
            if imageView.image == UIImage(named: "sailorCosmos")! {
                self.title = "How Powerful is Sailor Moon?"

            }
            else if imageView.image == UIImage(named: "crying")! {
                self.title = "Character Development"

            }
            
            
        }
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
