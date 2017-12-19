//
//  ViewController.swift
//  MemeMaker
//
//  Created by Stacy Layton on 12/18/17.
//  Copyright © 2017 Stacy Layton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PhotoSelectorControl: UISegmentedControl!
    @IBOutlet weak var TopCaptionSegControl: UISegmentedControl!
    @IBOutlet weak var TopCaptionLabel: UILabel!
    @IBOutlet weak var BottomCaptionLabel: UILabel!
    @IBOutlet weak var BottomCaptionSegControl: UISegmentedControl!
    @IBOutlet weak var MemeImage: UIImageView!
    
    
    var selectPhotoChoices = [ImageSelector]()
    var topChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        ///Buttons to scroll through Images
        let blankImage = ImageSelector(emoji: "۫", photo: "babyface1.jpg")
        let previousImage = ImageSelector(emoji: "⬅", photo: "craftykid1.jpg")
        let nextImage = ImageSelector(emoji: "➡", photo: "craftykid2.jpg")
        
        selectPhotoChoices = [previousImage, blankImage, nextImage]
        PhotoSelectorControl.removeAllSegments()
        for choice in selectPhotoChoices {
            PhotoSelectorControl.insertSegment(withTitle: choice.emoji, at: selectPhotoChoices.count, animated: false)
        }
        PhotoSelectorControl.selectedSegmentIndex = 1
        
        
        ///Buttons to select the words that appear over and under the image
        let blankOption = CaptionChoice(emoji: "۫", caption: " ")
        
        ///OVER
        let likeMeChoice = CaptionChoice(emoji: "😎", caption: "YOU DON'T LIKE ME?")
        let madChoice = CaptionChoice(emoji: "😡", caption: "U MAD BRO?")
        let omgChoice = CaptionChoice(emoji: "😲", caption: "ERMAHGERD")
        let failChoice = CaptionChoice(emoji: "👎", caption: "FAIL")
        let lolChoice = CaptionChoice(emoji: "🤪", caption: "LOL")
        let ninjaChoice = CaptionChoice(emoji: "🤺", caption: "LIKE A NINJA")
        let moodChoice = CaptionChoice(emoji: "🌝", caption: "MY MOOD EVERYDAY")
        let goodDealChoice = CaptionChoice(emoji: "💰", caption: "I KNOW A GOOD DEAL WHEN I SEE IT")
        let fatChoice = CaptionChoice(emoji: "🐷", caption: "HOW I FEEL AFTER AN 'ALL YOU CAN EAT' BUFFET")
        let introChoice = CaptionChoice(emoji: "🙇‍♀️", caption: "how my friends introduce me")
        
        topChoices = [blankOption, likeMeChoice, madChoice, omgChoice, failChoice, lolChoice, ninjaChoice, moodChoice, goodDealChoice, fatChoice, introChoice]
        TopCaptionSegControl.removeAllSegments()
        for choice in topChoices {
            TopCaptionSegControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        TopCaptionSegControl.selectedSegmentIndex = 0
        
        ///UNDER
        let catChoice = CaptionChoice(emoji: "😸", caption: "NO. JUST NO.")
        let dogChoice = CaptionChoice(emoji: "🐶", caption: "Dogs carrying logs")
        let monkeyChoice = CaptionChoice(emoji: "🐵", caption: "Monkies being funky")
        let kermitChoice = CaptionChoice(emoji: "🐸", caption: "BUT THAT'S NONE OF MY BUSINESS")
        let foxChoice = CaptionChoice(emoji: "🦊", caption: "WHAT DOES THE FOX SAY?")
        let cowChoice = CaptionChoice(emoji: "🐮", caption: "I GOTTA HAVE MORE COWBELL!")
        let baseChoice = CaptionChoice(emoji: "🎮", caption: "ALL YOUR BASE ARE BELONG TO US")
        let terroristChoice = CaptionChoice(emoji: "💣", caption: "I KILL YOU")
        let batChoice = CaptionChoice(emoji: "🦇", caption: "UNLESS YOU'RE BATMAN")
  
        bottomChoices = [blankOption, catChoice, dogChoice, monkeyChoice, kermitChoice, foxChoice, cowChoice, baseChoice, terroristChoice, batChoice]
        BottomCaptionSegControl.removeAllSegments()
        for choice in bottomChoices {
            BottomCaptionSegControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        BottomCaptionSegControl.selectedSegmentIndex = 0
        
        updateLabels()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabels() {
        let imageIndex = PhotoSelectorControl.selectedSegmentIndex
        let imageChoice = selectPhotoChoices[imageIndex]
        let imageName = imageChoice.photo
        
        MemeImage.image = UIImage(named: imageName)
        
        let topIndex = TopCaptionSegControl.selectedSegmentIndex
        let bottomIndex = BottomCaptionSegControl.selectedSegmentIndex
        let topChoice = topChoices[topIndex]
        let bottomChoice = bottomChoices[bottomIndex]
        
        TopCaptionLabel.text = topChoice.caption
        BottomCaptionLabel.text = bottomChoice.caption
    }

    @IBAction func choiceSelected(_ sender: Any) {
        updateLabels()
    }
    
}

