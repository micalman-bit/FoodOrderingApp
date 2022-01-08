//
//  OnboardingViewController.swift
//  FoodOrderingApp
//
//  Created by Andrey Samchenko on 08.01.2022.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnbaordingSlide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        collectionView.delegate = self
//        collectionView.dataSource = self
        
        slides = [
            OnbaordingSlide(title: "This is a pet project", description: "Food ordering application", image: UIImage(named: "slide1")!),
            OnbaordingSlide(title: "This is a pet project", description: "Food ordering application", image: UIImage(named: "slide2")!),
            OnbaordingSlide(title: "This is a pet project", description: "Food ordering application", image: UIImage(named: "slide3")!)
        ]

        
    }

    @IBAction func nextBtnTapped(_ sender: UIButton) {

    }
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
