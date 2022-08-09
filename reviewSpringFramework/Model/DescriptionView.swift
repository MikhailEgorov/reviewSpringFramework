//
//  DescriptionView.swift
//  reviewSpringFramework
//
//  Created by Егоров Михаил on 04.08.2022.
//




struct DescriptionModel {
    
    let preset: String
    let curve: String
    let force: Double
    let delay: Double
    let duration: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.03f", force))
        delay: \(String(format: "%.03f", delay))
        duration: \(String(format: "%.03f", duration))
        """
    }
    
    static func getRandomAnimation() -> DescriptionModel {
        DescriptionModel(
            preset: DataManager.shared.preset.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curve.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 0.1..<1),
            delay: Double.random(in: 0..<0.3),
            duration: Double.random(in: 0.8...1.9)
        )
    }

}


