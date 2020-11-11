//
//  ViewController.swift
//  animationChanger
//
//  Created by Никита Гвоздиков on 11.11.2020.
//

import Spring

class ShowAnimationsViewController: UIViewController {
    
    @IBOutlet var viewVithParametrs: SpringView!
    @IBOutlet var textOnView: UILabel!
    
    private var currentParametrs = AnimationParameters.getRandomAnimation()
    private var nextParametrs: AnimationParameters?
    
    @IBAction func nextAnimationButton(_ sender: SpringButton) {
        nextParametrs = AnimationParameters.getRandomAnimation()
        applyAnimation()
        printAnimationParametrs()
        sender.setTitle("Run \(nextParametrs!.preset)", for: .normal)
        currentParametrs = nextParametrs!
    }
}

extension ShowAnimationsViewController {
    func applyAnimation() {
        viewVithParametrs.animation = currentParametrs.preset
        viewVithParametrs.curve = currentParametrs.curve
        viewVithParametrs.duration = CGFloat(currentParametrs.duration)
        viewVithParametrs.delay = CGFloat(currentParametrs.delay)
        viewVithParametrs.force = CGFloat(currentParametrs.force)
        viewVithParametrs.animate()
    }
    
    func printAnimationParametrs() {
        textOnView.text = """
   Preset: \(currentParametrs.preset)
   Curve: \(currentParametrs.curve)
   Force: \(currentParametrs.force)
   Duration: \(currentParametrs.duration)
   Delay: \(currentParametrs.delay)
   """
    }
}

