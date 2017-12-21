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
    @IBOutlet weak var Top3rdCaptionSegControl: UISegmentedControl!
    @IBOutlet weak var TopCaptionLabel: UILabel!
    
    @IBOutlet weak var BottomCaptionLabel: UILabel!
    @IBOutlet weak var Bottom3rdCaptionSegControl: UISegmentedControl!
    @IBOutlet weak var Bottom2ndCaptionSegControl: UISegmentedControl!
    @IBOutlet weak var BottomCaptionSegControl: UISegmentedControl!
    
    var selectPhotoChoices = [ImageSelector]()
    var topChoices = [CaptionChoice]()
    var top2ndChoices = [CaptionChoice]()
    var top3rdChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    var bottom2ndChoices = [CaptionChoice]()
    var bottom3rdChoices = [CaptionChoice]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        ///Buttons to scroll through Images
        let blankImage = ImageSelector(emoji: "۫", photo: "blankimage.jpg")
        let previousImage = ImageSelector(emoji: "⬅", photo: "blankimage.jpg")
        let nextImage = ImageSelector(emoji: "➡", photo: "blankimage.jpg")
        
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
        let oneMoreChoice = CaptionChoice(emoji: "🕐", caption: "ONE MORE TIME") //22
        
        let arnoldThisChoice = CaptionChoice(emoji: "🔙", caption: "I'LL BE BACK") //23
        let worthChoice = CaptionChoice(emoji: "💵", caption: "WORTH IT") //24
        let whyChoice = CaptionChoice(emoji: "🤷🏻‍♀️", caption: "THIS IS WHY") //25
        let ripChoice = CaptionChoice(emoji: "💀", caption: "RIP") //26
        let greatChoice = CaptionChoice(emoji: "🦈", caption: "THAT WOULD BE GREAT") //27
        let struggleChoice = CaptionChoice(emoji: "😫", caption: "THE STRUGGLE IS REAL") //28
        let tellMeChoice = CaptionChoice(emoji: "🗣", caption: "YOU MEAN TO TELL ME") //29
        let understandChoice = CaptionChoice(emoji: "👭", caption: "YOU UNDERSTAND ME") //30
        let peeChoice = CaptionChoice(emoji: "🚽", caption: "I HAVE TO PEE") //31
        let ninjaCatChoice = CaptionChoice(emoji: "🐱", caption: "NINJA CAT") //32
        let someoneSaysChoice = CaptionChoice(emoji: "✋🏾", caption: "WHEN SOMEONE SAYS") //33
        
        topChoices = [blankOption, likeMeChoice, madChoice, omgChoice, failChoice, lolChoice, ninjaChoice, moodChoice, goodDealChoice, fatChoice, introChoice, awkwardChoice, blankOption]
        top2ndChoices = [blankOption, gotThisChoice, basicallyChoice, smileChoice, troubleChoice, watchChoice, toldChoice, noteChoice, meanwhileChoice, funChoice, notSimplyChoice, oneMoreChoice, blankOption]
        top3rdChoices = [blankOption, arnoldThisChoice, worthChoice, whyChoice, ripChoice, greatChoice, struggleChoice, tellMeChoice, understandChoice, peeChoice, ninjaCatChoice, someoneSaysChoice, blankOption]
        TopCaptionSegControl.removeAllSegments()
        Top2ndCaptionSegControl.removeAllSegments()
        Top3rdCaptionSegControl.removeAllSegments()
        for choice in topChoices {
            TopCaptionSegControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        for choice in top2ndChoices {
            Top2ndCaptionSegControl.insertSegment(withTitle: choice.emoji, at: top2ndChoices.count, animated: false)
        }
        for choice in top3rdChoices {
            Top3rdCaptionSegControl.insertSegment(withTitle: choice.emoji, at: top3rdChoices.count, animated: false)
        }
        TopCaptionSegControl.selectedSegmentIndex = 0
        Top2ndCaptionSegControl.selectedSegmentIndex = 0
        Top3rdCaptionSegControl.selectedSegmentIndex = 0
        
        ///BOTTOM
        let lateChoice = CaptionChoice(emoji: "💥", caption: "TOO LATE!") //23
        let eatedChoice = CaptionChoice(emoji: "🐼", caption: "I EATED IT") //24
        let pokerChoice = CaptionChoice(emoji: "♠️", caption: "*poker face*") //25
        let awfulChoice = CaptionChoice(emoji: "🤮", caption: "IT WAS AWFUL") //26
        let caredChoice = CaptionChoice(emoji: "💔", caption: "IN MEMORY OF WHEN I CARED") //27
        let lookinGoodChoice = CaptionChoice(emoji: "💅🏼", caption: "LOOKIN' THIS GOOD AIN'T EASY") //28
        let deadInsideChoice = CaptionChoice(emoji: "☠️", caption: "WHEN UR DEAD INSIDE") //29
        let moreChoice = CaptionChoice(emoji: "🙄", caption: "PLEASE TELL ME MORE") //30
        let batChoice = CaptionChoice(emoji: "🦇", caption: "UNLESS YOU'RE BATMAN") //31
        let unseenChoice = CaptionChoice(emoji: "😳", caption: "CANNOT BE UNSEEN") //32
        let winningChoice = CaptionChoice(emoji: "🏆", caption: "#WINNING") //33
        
        let catChoice = CaptionChoice(emoji: "😸", caption: "NO. JUST NO.") //12
        let wiseChoice = CaptionChoice(emoji: "🐼", caption: "CHOOSE WISELY") //13
        let epicChoice = CaptionChoice(emoji: "👑", caption: "EPIC") //14
        let kermitChoice = CaptionChoice(emoji: "🐸", caption: "BUT THAT'S NONE OF MY BUSINESS") //15
        let foxChoice = CaptionChoice(emoji: "🦊", caption: "WHAT DOES THE FOX SAY?") //16
        let cowChoice = CaptionChoice(emoji: "🐮", caption: "I GOTTA HAVE MORE COWBELL!") //17
        let baseChoice = CaptionChoice(emoji: "🎮", caption: "ALL YOUR BASE ARE BELONG TO US") //18
        let terroristChoice = CaptionChoice(emoji: "💣", caption: "I KILL YOU") //19
        let classChoice = CaptionChoice(emoji: "🤪", caption: "SUCH CLASS") //20
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
        let trumpChoice = CaptionChoice(emoji: "🤓", caption: "WRONG") //11
  
        bottomChoices = [blankOption, catChoice, wiseChoice, epicChoice, kermitChoice, foxChoice, cowChoice, baseChoice, terroristChoice, classChoice, thugChoice, wrongChoice, blankOption]
        bottom2ndChoices = [blankOption, successChoice, urWorthChoice, faithChoice, terribleChoice, chillChoice, derpChoice, legitChoice, problemChoice, acceptChoice, wowChoice, trumpChoice, blankOption]
        bottom3rdChoices = [blankOption, lateChoice, eatedChoice, pokerChoice, awfulChoice, caredChoice, lookinGoodChoice, deadInsideChoice, moreChoice, batChoice, unseenChoice, winningChoice, blankOption]
        BottomCaptionSegControl.removeAllSegments()
        Bottom2ndCaptionSegControl.removeAllSegments()
        Bottom3rdCaptionSegControl.removeAllSegments()
        for choice in bottomChoices {
            BottomCaptionSegControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        for choice in bottom2ndChoices {
            Bottom2ndCaptionSegControl.insertSegment(withTitle: choice.emoji, at: bottom2ndChoices.count, animated: false)
        }
        for choice in bottom3rdChoices {
            Bottom3rdCaptionSegControl.insertSegment(withTitle: choice.emoji, at: bottom3rdChoices.count, animated: false)
        }
        BottomCaptionSegControl.selectedSegmentIndex = 0
        Bottom2ndCaptionSegControl.selectedSegmentIndex = 0
        Bottom3rdCaptionSegControl.selectedSegmentIndex = 0
        
        updateImage()
        updateTopLabel()
        updateBottomLabel()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateImage() {
        ///UPDATE IMAGE
        let presetPhotos = ["babyface1", "craftykid1", "craftykid2", "craftykid3", "craftykid4", "craftykid5", "crying1", "crying2", "faces1", "faces2", "faces3", "faces4", "faces5", "faces6", "faces7", "funnycat1", "funnycat2", "funnycat3", "funnymonkey1", "kids1", "kids2", "kids3", "kids4", "kids5", "kids6", "kids7", "kids8", "kids9", "kids10", "kids11", "kids12", "kids13", "kids14","kids15", "kids16", "kids18", "kids19", "kids20", "kids21", "kids22", "kids23", "kids24", "kids25", "kids26", "kids27", "kids28", "kids29", "kids30", "kids31", "kids32", "kids33.png"]
        
        let randomNewPhoto = presetPhotos[Int(arc4random_uniform(UInt32(presetPhotos.count)))]
        MemeImage.image = UIImage(named: randomNewPhoto)
        //Reset the selector without updating the image
        PhotoSelectorControl.selectedSegmentIndex = 1
    }
    
    func updateTopLabel() {
        //UPDATE TOP MESSAGE
        var topIndex: Int
        var topChoice: CaptionChoice
        //Only one choice from the top segments
        if (TopCaptionSegControl.selectedSegmentIndex != 0) {
            topIndex = TopCaptionSegControl.selectedSegmentIndex
            topChoice = topChoices[topIndex]
        }
        else if (Top2ndCaptionSegControl.selectedSegmentIndex != 0) {
            topIndex = (Top2ndCaptionSegControl.selectedSegmentIndex)
            topChoice = top2ndChoices[topIndex]
        }
        else {
            topIndex = (Top3rdCaptionSegControl.selectedSegmentIndex)
            topChoice = top3rdChoices[topIndex]
        }
        //Reset these values
        TopCaptionSegControl.selectedSegmentIndex = 0
        Top2ndCaptionSegControl.selectedSegmentIndex = 0
        Top3rdCaptionSegControl.selectedSegmentIndex = 0
        
        TopCaptionLabel.text = topChoice.caption
    }
    
    func updateBottomLabel() {
        ///UPDATE BOTTOM MESSAGE
        var bottomIndex: Int
        var bottomChoice: CaptionChoice
        //Only one choice from the bottom segments
        if (BottomCaptionSegControl.selectedSegmentIndex != 0) {
            bottomIndex = BottomCaptionSegControl.selectedSegmentIndex
            bottomChoice = bottomChoices[bottomIndex]
        }
        else if (Bottom2ndCaptionSegControl.selectedSegmentIndex != 0) {
            bottomIndex = (Bottom2ndCaptionSegControl.selectedSegmentIndex)
            bottomChoice = bottom2ndChoices[bottomIndex]
        }
        else {
            bottomIndex = (Bottom3rdCaptionSegControl.selectedSegmentIndex)
            bottomChoice = bottom3rdChoices[bottomIndex]
        }
        //Reset these values
        BottomCaptionSegControl.selectedSegmentIndex = 0
        Bottom2ndCaptionSegControl.selectedSegmentIndex = 0
        Bottom3rdCaptionSegControl.selectedSegmentIndex = 0
        
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

