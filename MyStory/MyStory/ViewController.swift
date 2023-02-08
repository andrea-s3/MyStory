//
//  ViewController.swift
//  MyStory
//
//  Created by Andrea Sanchez on 2/6/23.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Models

    // Create individual Dinosaurs using Dinosaur model
    let backstory = charStory(image: UIImage(named: "princessSerenity")!, text: "The solar system was controlled by the lovely Queen Serenity thousands of years before Sailor Moon began. Princess Serenity, her daughter, would later be reborn as Usagi Tsukino, the future Sailor Moon. Prince Endymion from Earth won the heart of Princess Serenity. After a protracted struggle between the Moon and Earth, their forbidden love resulted in their deaths. With the last of her strength, Queen Serenity sealed the souls of her daughter Endymion, the sailors soldiers, and their guardian cats, so that they could reincarnate in a new era of peace.")
    let development = charStory(image: UIImage(named: "crying")!, text: "Particularly in the early episodes of the series, Usagi might be unduly sentimental. She even admits this about herself at the beginning of each episode, saying that she's sensitive and can be a crybaby. She develops into a strong leader who recognizes and fully accepts the responsibility placed upon her. No matter how much misfortune she encounters, she tries to have a happy attitude and doesn't let it affect her.")
    let powers = charStory(image: UIImage(named: "sailorCosmos")!, text: "She has the ability to alter reality's rules, easily bending space and time. Her influence extends to the stars themselves when she becomes Sailor Cosmos. Many people think she has greater strength than Goku.")
    // Array for storing Character
    var characters: [charStory] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Store Character models
        characters = [backstory, development, powers]
      
    }
    
//    @IBAction func tappedButton(_ sender: UIButton) {
//        print("Tapped")
//    }
    
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.characters = characters[0]
//                self.parent?.title = "Backstory"
            } else if tappedView.tag == 1 {
                detailViewController.characters = characters[1]
//                self.title = "Character Development"
            } else if tappedView.tag == 2 {
                detailViewController.characters = characters[2]
//                self.title = "How Powerful is Sailor Moon?"
            }else {
                print("no option was tapped, please check your selection.")
            }
        }
    }
    
    
}

