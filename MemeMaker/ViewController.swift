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
    @IBOutlet weak var MemeImage: UIImageView!
    
    @IBOutlet weak var TopCaptionSegControl: UISegmentedControl!
    @IBOutlet weak var Top2ndCaptionSegControl: UISegmentedControl!
    @IBOutlet weak var TopCaptionLabel: UILabel!
    
    @IBOutlet weak var BottomCaptionLabel: UILabel!
    @IBOutlet weak var Bottom2ndCaptionSegControl: UISegmentedControl!
    @IBOutlet weak var BottomCaptionSegControl: UISegmentedControl!
    
    var selectPhotoChoices = [ImageSelector]()
    var topChoices = [CaptionChoice]()
    var top2ndChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    var bottom2ndChoices = [CaptionChoice]()
    
    
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
        let introChoice = CaptionChoice(emoji: "🙇‍♀️", caption: "HOW MY FRIENDS INTRODUCE ME")
        let awkwardChoice = CaptionChoice(emoji: "😳", caption: "THAT AWKWARD MOMENT WHEN YOU REALIZE")
        
        let gotThisChoice = CaptionChoice(emoji: "✅", caption: "I GOT THIS")
        let basicallyChoice = CaptionChoice(emoji: "𝔅", caption: "SO, BASICALLY")
        let crapChoice = CaptionChoice(emoji: "💩", caption: "THE CRAP IS THIS?")
        let troubleChoice = CaptionChoice(emoji: "🆘", caption: "YOU KNOW YOU'RE IN TROUBLE WHEN")
        let watchChoice = CaptionChoice(emoji: "👀", caption: "WAIT, WATCH THIS")
        let firstChoice = CaptionChoice(emoji: "𝟏", caption: "AT FIRST I WAS LIKE")
        let noteChoice = CaptionChoice(emoji: "📝", caption: "NOTE TO SELF")
        let meanwhileChoice = CaptionChoice(emoji: "☄️", caption: "MEANWHILE")
        let funChoice = CaptionChoice(emoji: "🍄", caption: "I HAD FUN ONCE")
        let notSimplyChoice = CaptionChoice(emoji: "🚫", caption: "ONE DOES NOT SIMPLY")
        let dontAlwaysChoice = CaptionChoice(emoji: "🔝", caption: "I DON'T ALWAYS")
        
        topChoices = [blankOption, likeMeChoice, madChoice, omgChoice, failChoice, lolChoice, ninjaChoice, moodChoice, goodDealChoice, fatChoice, introChoice, awkwardChoice]
        top2ndChoices = [blankOption, gotThisChoice, basicallyChoice, crapChoice, troubleChoice, watchChoice, firstChoice, noteChoice, meanwhileChoice, funChoice, notSimplyChoice, dontAlwaysChoice]
        TopCaptionSegControl.removeAllSegments()
        Top2ndCaptionSegControl.removeAllSegments()
        for choice in topChoices {
            TopCaptionSegControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        for choice in top2ndChoices {
            Top2ndCaptionSegControl.insertSegment(withTitle: choice.emoji, at: top2ndChoices.count, animated: false)
        }
        TopCaptionSegControl.selectedSegmentIndex = 0
        Top2ndCaptionSegControl.selectedSegmentIndex = 0
        
        ///UNDER
        let catChoice = CaptionChoice(emoji: "😸", caption: "NO. JUST NO.")
        let wiseChoice = CaptionChoice(emoji: "🐼", caption: "CHOOSE WISELY")
        let epicChoice = CaptionChoice(emoji: "👑", caption: "EPIC")
        let kermitChoice = CaptionChoice(emoji: "🐸", caption: "BUT THAT'S NONE OF MY BUSINESS")
        let foxChoice = CaptionChoice(emoji: "🦊", caption: "WHAT DOES THE FOX SAY?")
        let cowChoice = CaptionChoice(emoji: "🐮", caption: "I GOTTA HAVE MORE COWBELL!")
        let baseChoice = CaptionChoice(emoji: "🎮", caption: "ALL YOUR BASE ARE BELONG TO US")
        let terroristChoice = CaptionChoice(emoji: "💣", caption: "I KILL YOU")
        let batChoice = CaptionChoice(emoji: "🦇", caption: "UNLESS YOU'RE BATMAN")
        let secondChoice = CaptionChoice(emoji: "𝟐", caption: "BUT THEN I WAS LIKE")
        let wrongChoice = CaptionChoice(emoji: "🤢", caption: "I WAS WRONG!")
        let successChoice = CaptionChoice(emoji: "✊🏽", caption: "SUCCESS")
        
        let urWorthChoice = CaptionChoice(emoji: "💍", caption: "BECAUSE U R WORTH IT")
        let faithChoice = CaptionChoice(emoji: "✞", caption: "FAITH IN HUMANITY RESTORED")
        let chillChoice = CaptionChoice(emoji: "❄️", caption: "CHILL")
  
        bottomChoices = [blankOption, catChoice, dogChoice, monkeyChoice, kermitChoice, foxChoice, cowChoice, baseChoice, terroristChoice, batChoice, secondChoice, wrongChoice, successChoice]
        bottom2ndChoices = [blankOption, urWorthChoice, faithChoice, chillChoice]
        BottomCaptionSegControl.removeAllSegments()
        Bottom2ndCaptionSegControl.removeAllSegments()
        for choice in bottomChoices {
            BottomCaptionSegControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        for choice in bottom2ndChoices {
            Bottom2ndCaptionSegControl.insertSegment(withTitle: choice.emoji, at: bottom2ndChoices.count, animated: false)
        }
        BottomCaptionSegControl.selectedSegmentIndex = 0
        Bottom2ndCaptionSegControl.selectedSegmentIndex = 0
        
        //updateImage()
        updateTopLabel()
        updateBottomLabel()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateImage() {
        ///UPDATE IMAGE
        let imageIndex = PhotoSelectorControl.selectedSegmentIndex
        let imageChoice = selectPhotoChoices[imageIndex]
        let imageName = imageChoice.photo
        MemeImage.image = UIImage(named: imageName)
    }
    
    func updateTopLabel() {
        //UPDATE TOP MESSAGE
        var topIndex: Int
        var topChoice: CaptionChoice
        //Only one choice from the top segments
        if (TopCaptionSegControl.selectedSegmentIndex == 0) {
            topIndex = (Top2ndCaptionSegControl.selectedSegmentIndex)
            topChoice = top2ndChoices[topIndex]
        } else {
            topIndex = TopCaptionSegControl.selectedSegmentIndex
            topChoice = topChoices[topIndex]
        }
        //Reset these values
        TopCaptionSegControl.selectedSegmentIndex = 0
        Top2ndCaptionSegControl.selectedSegmentIndex = 0
        
        TopCaptionLabel.text = topChoice.caption
    }
    
    func updateBottomLabel() {
        ///UPDATE BOTTOM MESSAGE
        var bottomIndex: Int
        var bottomChoice: CaptionChoice
        //Only one choice from the bottom segments
        if (BottomCaptionSegControl.selectedSegmentIndex == 0) {
            bottomIndex = (Bottom2ndCaptionSegControl.selectedSegmentIndex)
            bottomChoice = bottom2ndChoices[bottomIndex]
        } else {
            bottomIndex = BottomCaptionSegControl.selectedSegmentIndex
            bottomChoice = bottomChoices[bottomIndex]
        }
        //Reset these values
        BottomCaptionSegControl.selectedSegmentIndex = 0
        Bottom2ndCaptionSegControl.selectedSegmentIndex = 0
        
        BottomCaptionLabel.text = bottomChoice.caption
    }
    
    @IBAction func photoSelected(_ sender: Any) {
        updateImage()
    }
    
    @IBAction func topChoiceSelected(_ sender: Any) {
        updateTopLabel()
    }
    
    @IBAction func bottomChoiceSelected(_ sender: Any) {
        updateBottomLabel()
    }
}

