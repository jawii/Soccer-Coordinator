//: Playground - noun: a place where people can play
//: Code - noun: ??????

import UIKit

var playersData: [[String : Any]] = [
    [
        "playerName" : "Joe Smith",
        "height": 42.0,
        "isExperienced": true,
        "guardianName": "Jim and Jan Smith"
    ],
    [
        "playerName" : "Jill Tanner",
        "height": 36.0,
        "isExperienced": true,
        "guardianName": "Clara Tanner"
    ],
    [
        "playerName" : "Bill Bon",
        "height": 43.0,
        "isExperienced": true,
        "guardianName": "Sara and Jenny Bon"
    ],
    [
        "playerName" : "Eva Gordon",
        "height": 45.0,
        "isExperienced": false,
        "guardianName": "Wendy and Mike Gordon"
    ],
    [
        "playerName" : "Matt Gill",
        "height": 40.0,
        "isExperienced": false,
        "guardianName": "Charles and Sylvia Gill"
    ],
    [
        "playerName" : "Kimmy Stein",
        "height": 41.0,
        "isExperienced": true,
        "guardianName": "Bill and Hillary Stein"
    ],
    [
        "playerName" : "Sammy Adams",
        "height": 45.0,
        "isExperienced": true,
        "guardianName": "Jeff Adams"
    ],
    [
        "playerName" : "Karl Saygan",
        "height": 42,
        "isExperienced": true,
        "guardianName": "Heather Bledsoe"
    ],
    [
        "playerName" : "Suzane GreenBerg",
        "height": 44.0,
        "isExperienced": true,
        "guardianName": "Henrietta Dumas"
    ],
    [
        "playerName" : "Sal Dali",
        "height": 41.0,
        "isExperienced": false,
        "guardianName": "Gala Dali"
    ],
    [
        "playerName" : "Joe Kavalier",
        "height": 39.0,
        "isExperienced": false,
        "guardianName": "Sam and Elaine Kavalier"
    ],
    [
        "playerName" : "Ben Finkelstein",
        "height": 44.0,
        "isExperienced": false,
        "guardianName": "Aaron and Jill Finkelstein"
    ],
    [
        "playerName" : "Diego Soto",
        "height": 41.0,
        "isExperienced": true,
        "guardianName": "Robin and Sarika Soto"
    ],
    [
        "playerName" : "Chloe Alaska",
        "height": 47.0,
        "isExperienced": false,
        "guardianName": "David and Jamie Alaska"
    ],
    [
        "playerName" : "Arnold Willis",
        "height": 43.0,
        "isExperienced": false,
        "guardianName": "Claire Willis"
    ],
    [
        "playerName" : "Philip Helm",
        "height": 44.0,
        "isExperienced": true,
        "guardianName": "Thomas Helm and Eva Jones"
    ],
    [
        "playerName" : "Les Clay",
        "height": 42.0,
        "isExperienced": true,
        "guardianName": "Wynonna Brown"
    ],
    [
        "playerName" : "Herschel Krustofski",
        "height": 45.0,
        "isExperienced": true,
        "guardianName": "Hyman and Rachel Krustofski"
    ]
]

let playerAmount = playersData.count

//print(playersData[10]["isExperienced"] as! Bool)
var experiencedPlayers: [[String : Any]] = []

//Collect players to arrays as experienced or not
for player in playersData {
    let isExperienced = player["isExperienced"] as! Bool
    if isExperienced {
        experiencedPlayers.append(player)
    }
}


