//
//  DataManager.swift
//  reviewSpringFramework
//
//  Created by Егоров Михаил on 09.08.2022.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let preset = Spring.AnimationPreset.allCases
    
    let curve = Spring.AnimationCurve.allCases
    
    private init() {}
}
