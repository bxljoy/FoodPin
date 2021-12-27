//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by bxl on 2021/12/16.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var rateButtons: [UIButton]!
    @IBOutlet var closeButton: UIButton!
    var restaurant = Restaurant()
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.image = UIImage(data: restaurant.image)
        
        // Applying the blur effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        let scaleUpTransform = CGAffineTransform.init(scaleX: 5.0, y: 5.0)
        let moveScaleTransform = scaleUpTransform.concatenating(moveRightTransform
        )
        // Make the button invisible and move off the screen
        for rateButton in rateButtons {
            rateButton.transform = moveScaleTransform
            rateButton.alpha = 0
        }
        
        let moveTopTransform = CGAffineTransform.init(translationX: 0, y: -300)
        closeButton.transform = moveTopTransform
        closeButton.alpha = 0

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
//        UIView.animate(withDuration: 0.8, delay: 0.2, usingSpringWithDamping: 0.2,
//                       initialSpringVelocity: 0.3, options: [], animations:
//       {
//            self.rateButtons[0].alpha = 1.0
//            self.rateButtons[0].transform = .identity
//       }, completion: nil)
//
//        UIView.animate(withDuration: 0.4, delay: 0.15, options: [], animations:
//       {
//            self.rateButtons[1].alpha = 1.0
//            self.rateButtons[1].transform = .identity
//       }, completion: nil)
//
//        UIView.animate(withDuration: 0.4, delay: 0.2, options: [], animations:
//       {
//            self.rateButtons[2].alpha = 1.0
//            self.rateButtons[2].transform = .identity
//       }, completion: nil)
//
//        UIView.animate(withDuration: 0.4, delay: 0.25, options: [], animations:
//       {
//            self.rateButtons[3].alpha = 1.0
//            self.rateButtons[3].transform = .identity
//       }, completion: nil)
//
//        UIView.animate(withDuration: 0.4, delay: 0.3, options: [], animations:
//       {
//            self.rateButtons[4].alpha = 1.0
//            self.rateButtons[4].transform = .identity
//       }, completion: nil)
        
        var delay: Double = 0.1
        for rateButton in rateButtons {
            UIView.animate(withDuration: 0.4, delay: delay, options: [], animations:
           {
                rateButton.alpha = 1.0
                rateButton.transform = .identity
           }, completion: nil)
            delay += 0.05
        }
        
        UIView.animate(withDuration: 0.8, delay: 0.2, options: [], animations:
       {
            self.closeButton.alpha = 1.0
            self.closeButton.transform = .identity
       }, completion: nil)
    }

}
