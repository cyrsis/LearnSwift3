//
//  DataHelper.swift
//  TestSqliteSwiftV2
//
//  Created by Jon Hoffman on 7/28/15.
//  Copyright © 2015 Jon Hoffman. All rights reserved.
//

import Foundation


enum DataAccessError: Error {
    case datastore_Connection_Error
    case insert_Error
    case delete_Error
    case search_Error
    case nil_In_Data
}


protocol DataHelperProtocol {
    associatedtype T
    static func insert(_ item: T) throws -> Int64
    static func delete(_ item: T) throws -> Void
    static func findAll() throws -> [T]?
}


class TeamDataHelper: DataHelperProtocol {
    typealias T = TeamData
    static var teamData: [T] = []
    
    static func insert(_ item: T) throws -> Int64 {
        guard item.teamId != nil && item.city != nil && item.nickName != nil && item.abbreviation != nil else {
            throw DataAccessError.nil_In_Data
        }
        teamData.append(item)
        return item.teamId!
    }
    
    static func delete (_ item: T) throws -> Void {
        guard let id = item.teamId else {
            throw DataAccessError.nil_In_Data
        }
        let teamArray = teamData
        for (index, team) in teamArray.enumerated() where team.teamId == id {
            teamData.remove(at: index)
            return
        }
        throw DataAccessError.delete_Error
    }
    
    static func find(_ id: Int64) throws -> T? {
        for team in teamData where team.teamId == id {
            return team
        }
        return nil
    }
    
    static func findAll() throws -> [T]? {
        return teamData
    }
}



class PlayerDataHelper: DataHelperProtocol {
    static let TABLE_NAME = "Players"
    static var playerData: [T] = []
    
    typealias T = PlayerData

    
    static func insert(_ item: T) throws -> Int64 {
        guard item.playerId != nil && item.firstName != nil && item.lastName != nil && item.teamId != nil && item.position != nil else {
            throw DataAccessError.nil_In_Data
        }
        playerData.append(item)
        return item.playerId!
    }
    
    static func delete (_ item: T) throws -> Void {
        guard let id = item.playerId else {
            throw DataAccessError.delete_Error
        }
        let playerArray = playerData
        for (index, player) in playerArray.enumerated() where player.playerId == id {
            playerData.remove(at: index)
        }
    }
    
    static func find(_ id: Int64) throws -> T? {
        for player in playerData where player.playerId == id {
            return player
        }
        return nil
    }
    
    static func findAll() throws -> [T]? {
        return playerData
    }
}

