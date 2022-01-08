//
//  OnboardingCollectionViewCell.swift
//  FoodOrderingApp
//
//  Created by Andrey Samchenko on 08.01.2022.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    
    func setup(_ slide: OnbaordingSlide) {
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
    }
}
