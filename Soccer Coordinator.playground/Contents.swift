//: Playground - noun: a place where people can play
//: Code - noun: ??????

import UIKit

//Any?
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
        "height": 42.0,
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

let teamsAndPractiseTimes : [String : String] =
    [
        "Dragons" : "March 17, 1pm",
        "Sharks" : "March 17, 3pm",
        "Raptors" : "March 18, 1pm"
        //,"Test": "TestTime"
    ]

/*
 --------------------------------
 
 FUNCTIONS

 --------------------------------
*/

func checkExperience(forPlayer player :[String: Any]) -> Bool {
    let isExperienced = player["isExperienced"] as! Bool
    return isExperienced
}

func sortArrayOfDicsByHeight(array :[[String:Any]]) -> [[String:Any]] {
    //This was tricky but learned something about Swift :)
    return array.sorted(by: { $0["height"] as! Double > $1["height"] as! Double })
}

func calculateTeamsAverageHeight(withArrayOfPlayers players : [[String: Any]]) -> Double{
    var sum = 0.0
    for player in players {
        sum += player["height"] as! Double
    }
    return sum / Double(players.count)
}

func calculateTeamsExperiencedPlayersAmount(withTeamArray players : [[String: Any]]) -> Int {
    var experienced  = 0
    for player in players {
        if checkExperience(forPlayer: player){
            experienced += 1
        }
    }
    return experienced
}

func printTeamsInfo (withTeam teams : [[[String: Any]]]) -> Void {
    var index = 1
    for team in teams{
        let height = calculateTeamsAverageHeight(withArrayOfPlayers: team);
        var experiencedPlayers = calculateTeamsExperiencedPlayersAmount(withTeamArray: team)
        var str = ""
        str += "Team " + String(index) + " player amount: "
        str += String(team.count)
        str += "\nTeam average height: "
        str += String(round(height))
        str += "\nNumber of Experienced players: "
        str += String(experiencedPlayers)
        str += "\n"
        print(str)
        index += 1
    }
}

func sendLetters (teams : [[[String: Any]]]) -> Void {
    
    var index = 0
    //get the team names
    var teamNames :[String] = []
    for (key, value) in teamsAndPractiseTimes{
        teamNames.append(key)
    }
    //Go trough all players
    for team in teams {
        var team = teamNames.removeFirst()
        print(team)
        print(teamsAndPractiseTimes[team])
    
        for player in team {
            
        }
    }
    
}
/*
 --------------------------------
 
 CONSTANTS AND VARIABLES
 
 --------------------------------
*/
let playerAmount = playersData.count
let teamAmount = teamsAndPractiseTimes.count


var teams :[[[String : Any]]] = []

var index = 0
while index < teamAmount {
    //create team
    let team : [[String : Any ]] = []
    teams.append(team)
    index += 1
}

/*
 --------------------------------
 
 LOGIC
 
 --------------------------------
*/
//Collect players to arrays of experienced and inexperienced players
var experiencedPlayers: [[String : Any]] = []
var nonExperiencedPlayers: [[String : Any]] = []

for player in playersData {
    let isExperienced = player["isExperienced"] as! Bool
    if isExperienced {
        experiencedPlayers.append(player)
    }
    else{
        nonExperiencedPlayers.append(player)
    }
}

//rearrange arrays with height order
nonExperiencedPlayers = sortArrayOfDicsByHeight(array: nonExperiencedPlayers)
experiencedPlayers = sortArrayOfDicsByHeight(array: experiencedPlayers)


//iterate players and keep adding player to team
index = 0

for player in experiencedPlayers {
    teams[index % teamAmount].append(player)
    index += 1
}
//go other way around with non experienced players
index = teamAmount - 1
for player in nonExperiencedPlayers {
    teams[index % teamAmount].append(player)
    index -= 1
    if index == -1 {
        index = teamAmount - 1
    }
}

//PRINT TEAMS INFO
printTeamsInfo(withTeam: teams)

//SEND LETTERS
sendLetters(teams: teams)



