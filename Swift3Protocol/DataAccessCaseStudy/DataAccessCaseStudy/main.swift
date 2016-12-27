//
//  main.swift
//  DataAccessCaseStudy
//
//  Created by Jon Hoffman on 10/4/16.
//  Copyright © 2016 Jon Hoffman. All rights reserved.
//

import Foundation

print("Hello, World!")


func setData() {
    var bos = Team(
        teamId: 0,
        city: "Boston",
        nickName: "Red Sox",
        abbreviation: "BOS")
    
    try? TeamBridge.save(&bos)
    print("\(bos.teamId)")
    
    var ortiz = Player(
        playerId: 0,
        firstName: "David",
        lastName: "Ortiz",
        number: 34,
        teamId: bos.teamId,
        position: Positions.DesignatedHitter)
    
    try? PlayerBridge.save(&ortiz)
    print("\(ortiz.playerId)  \(ortiz.team?.nickName)")
    
}

setData()

if let team = try? TeamBridge.retrieve(0) {
    print("--- \(team?.city)")
}

if let player = try? PlayerBridge.retrieve(0) {
    print("---- \(player?.firstName) \(player?.lastName) plays for \(player?.team?.city)")
}


