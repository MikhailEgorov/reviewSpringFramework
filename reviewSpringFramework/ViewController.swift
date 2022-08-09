//
//  ViewController.swift
//  reviewSpringFramework
//
//  Created by Егоров Михаил on 04.08.2022.
//

import Spring

class ViewController: UIViewController {
   
    // MARK: - IB Outlets
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var descriptionAnimationLabel: UILabel!
    @IBOutlet var buttonName: SpringButton!
    
    //MARK: - Private properties
    private var getAnimation = DescriptionModel.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionAnimationLabel.text = "Press the button"
        buttonName.setTitle("go \(getAnimation.preset)", for: .normal)
    }
    
    //MARK: - IB Actions
    @IBAction func goSpringAnimation() {
        descriptionAnimationLabel.text = getAnimation.description
        
        springAnimationView.animation = getAnimation.preset
        springAnimationView.curve = getAnimation.curve
        springAnimationView.force = getAnimation.force
        springAnimationView.delay = getAnimation.delay
        springAnimationView.duration = getAnimation.duration
        springAnimationView.animate()
        
        getAnimation = DescriptionModel.getRandomAnimation()
        buttonName.setTitle("go \(getAnimation.preset)", for: .normal)
    }
    
}

