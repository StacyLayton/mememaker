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
        
        ///TOP
        let likeMeChoice = CaptionChoice(emoji: "😎", caption: "YOU DON'T LIKE ME?") //1
        let madChoice = CaptionChoice(emoji: "😡", caption: "U MAD BRO?") //2
        let omgChoice = CaptionChoice(emoji: "😲", caption: "ERMAHGERD") //3
        let failChoice = CaptionChoice(emoji: "👎", caption: "FAIL") //4
        let lolChoice = CaptionChoice(emoji: "😜", caption: "LOL") //5
        let ninjaChoice = CaptionChoice(emoji: "🤺", caption: "LIKE A NINJA") //6
        let moodChoice = CaptionChoice(emoji: "🌝", caption: "MY MOOD EVERYDAY") //7
        let goodDealChoice = CaptionChoice(emoji: "💰", caption: "I KNOW A GOOD DEAL WHEN I SEE IT") //8
        let fatChoice = CaptionChoice(emoji: "🐷", caption: "HOW I FEEL AFTER AN 'ALL YOU CAN EAT' BUFFET") //9
        let introChoice = CaptionChoice(emoji: "🙇‍♀️", caption: "HOW MY FRIENDS INTRODUCE ME") //10
        let awkwardChoice = CaptionChoice(emoji: "😳", caption: "THAT AWKWARD MOMENT WHEN YOU REALIZE") //11
        
        let gotThisChoice = CaptionChoice(emoji: "✅", caption: "I GOT THIS") //12
        let basicallyChoice = CaptionChoice(emoji: "𝔅", caption: "SO, BASICALLY") //13
        let smileChoice = CaptionChoice(emoji: "😃", caption: "KEEP CALM") //14
        let troubleChoice = CaptionChoice(emoji: "🆘", caption: "YOU KNOW UR IN TROUBLE WHEN") //15
        let watchChoice = CaptionChoice(emoji: "👀", caption: "WAIT, WATCH THIS") //16
        let toldChoice = CaptionChoice(emoji: "🦄", caption: "WHAT IF I TOLD YOU") //17
        let noteChoice = CaptionChoice(emoji: "📝", caption: "NOTE TO SELF") //18
        let meanwhileChoice = CaptionChoice(emoji: "☄️", caption: "MEANWHILE") //19
        let funChoice = CaptionChoice(emoji: "🍄", caption: "I HAD FUN ONCE") //20
        let notSimplyChoice = CaptionChoice(emoji: "🚫", caption: "ONE DOES NOT SIMPLY") //21
        //let dontAlwaysChoice = CaptionChoice(emoji: "🔝", caption: "I DON'T ALWAYS")
        let oneMoreChoice = CaptionChoice(emoji: "🕐", caption: "ONE MORE TIME") //22
        
        topChoices = [blankOption, likeMeChoice, madChoice, omgChoice, failChoice, lolChoice, ninjaChoice, moodChoice, goodDealChoice, fatChoice, introChoice, awkwardChoice]
        top2ndChoices = [blankOption, gotThisChoice, basicallyChoice, smileChoice, troubleChoice, watchChoice, toldChoice, noteChoice, meanwhileChoice, funChoice, notSimplyChoice, oneMoreChoice]
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
        
        ///BOTTOM
        let catChoice = CaptionChoice(emoji: "😸", caption: "NO. JUST NO.") //12
        let wiseChoice = CaptionChoice(emoji: "🐼", caption: "CHOOSE WISELY") //13
        let epicChoice = CaptionChoice(emoji: "👑", caption: "EPIC") //14
        let kermitChoice = CaptionChoice(emoji: "🐸", caption: "BUT THAT'S NONE OF MY BUSINESS") //15
        let foxChoice = CaptionChoice(emoji: "🦊", caption: "WHAT DOES THE FOX SAY?") //16
        let cowChoice = CaptionChoice(emoji: "🐮", caption: "I GOTTA HAVE MORE COWBELL!") //17
        let baseChoice = CaptionChoice(emoji: "🎮", caption: "ALL YOUR BASE ARE BELONG TO US") //18
        let terroristChoice = CaptionChoice(emoji: "💣", caption: "I KILL YOU") //19
        //let batChoice = CaptionChoice(emoji: "🦇", caption: "UNLESS YOU'RE BATMAN")
        let classChoice = CaptionChoice(emoji: "🤪", caption: "SUCH CLASS") //20
        //let secondChoice = CaptionChoice(emoji: "𝟐", caption: "BUT THEN I WAS LIKE")
        let thugChoice = CaptionChoice(emoji: "👨‍🎤", caption: "THUG LIFE") //21
        let wrongChoice = CaptionChoice(emoji: "🤢", caption: "I WAS WRONG!") //22
        
        let successChoice = CaptionChoice(emoji: "✊🏽", caption: "SUCCESS") //1
        let urWorthChoice = CaptionChoice(emoji: "💍", caption: "BECAUSE U R WORTH IT") //2
        let faithChoice = CaptionChoice(emoji: "✞", caption: "FAITH IN HUMANITY RESTORED") //3
        let terribleChoice = CaptionChoice(emoji: "🙅🏻‍♂️", caption: "VERY MUCH TERRIBLE") //4
        let chillChoice = CaptionChoice(emoji: "❄️", caption: "CHILL") //5
        let derpChoice = CaptionChoice(emoji: "🤪", caption: "DERP") //6
        let legitChoice = CaptionChoice(emoji: "👁‍🗨", caption: "SEEMS LEGIT") //7
        let problemChoice = CaptionChoice(emoji: "👮‍♀️", caption: "PROBLEM?") //8
        let acceptChoice = CaptionChoice(emoji: "🆗", caption: "ACCEPT IT") //9
        let wowChoice = CaptionChoice(emoji: "✨", caption: "SO MUCH WOW") //10
        let trumpChoice = CaptionChoice(emoji: "🦇", caption: "WRONG") //11
  
        bottomChoices = [blankOption, catChoice, wiseChoice, epicChoice, kermitChoice, foxChoice, cowChoice, baseChoice, terroristChoice, classChoice, thugChoice, wrongChoice]
        bottom2ndChoices = [blankOption, successChoice, urWorthChoice, faithChoice, terribleChoice, chillChoice, derpChoice, legitChoice, problemChoice, acceptChoice, wowChoice, trumpChoice]
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

