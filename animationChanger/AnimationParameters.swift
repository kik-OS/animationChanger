//
//  AnimationParameters.swift
//  animationChanger
//
//  Created by Никита Гвоздиков on 11.11.2020.
//


import Foundation

struct AnimationParameters {
    let preset: String
    let curve: String
    let force: Int
    let duration: Int
    let delay: Int
    
    static func getRandomAnimation() -> AnimationParameters {
        
        let animationTypes = ["shake", "pop", "morph", "squeeze",
                              "wobble", "swing", "flipX", "flipY",
                              "fall", "squeezeLeft", "squeezeRight",
                              "squeezeDown", "squeezeUp", "slideLeft",
                              "slideRight", "slideDown", "slideUp",
                              "fadeIn", "fadeOut", "fadeInLeft",
                              "fadeInRight", "fadeInDown", "fadeInUp",
                              "zoomIn", "zoomOut", "flash"]
        
        let curveTypes = ["easeIn", "easeOut", "easeInOut", "linear",
                          "spring", "easeInSine", "easeOutSine",
                          "easeInOutSine", "easeInQuad", "easeOutQuad",
                          "easeInOutQuad", "easeInCubic", "easeOutCubic",
                          "easeInOutCubic", "easeInQuart", "easeOutQuart",
                          "easeInOutQuart", "easeInQuint", "easeOutQuint",
                          "easeInOutQuint", "easeInExpo", "easeOutExpo",
                          "easeInOutExpo", "easeInCirc", "easeOutCirc",
                          "easeInOutCirc", "easeInBack", "easeOutBack",
                          "easeInOutBack"]
        
        
        return AnimationParameters(preset: animationTypes[Int.random(in: 0..<animationTypes.count)], curve: curveTypes[Int.random(in: 0..<curveTypes.count)], force: Int.random(in: 1...3), duration: Int.random(in: 1...3), delay: 0)
    }
}

