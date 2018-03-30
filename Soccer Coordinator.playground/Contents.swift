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
    /*,
    [
        "playerName" : "Jaakko Kenttä",
        "height": 44.0,
        "isExperienced": true,
        "guardianName": "Saara Kenttä"
    ]
    */
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
 
 CONSTANTS AND VARIABLES
 
 --------------------------------
 */
let playerAmount = playersData.count
let teamAmount = teamsAndPractiseTimes.count
var letters :[String] = []


var teams :[[[String : Any]]] = []

var index = 0
while index < teamAmount {
    //create team
    let team : [[String : Any ]] = []
    teams.append(team)
    index += 1
}

//Final teams <- didnt read the instructions carefully so i have to manage these here
var teamSharks :[[String : Any]] = []
var teamDragons :[[String : Any]] = []
var teamRaptors :[[String : Any]] = []

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

func printTeamsInfo (withTeam team : [[String: Any]]) -> Void {
    let height = calculateTeamsAverageHeight(withArrayOfPlayers: team);
    let experiencedPlayers = calculateTeamsExperiencedPlayersAmount(withTeamArray: team)
    var str = ""
    let teamName = team[0]["teamName"] as! String
    //let teamName = "Raptors"
    str += "Team " + teamName + " player amount: "
    str += String(team.count)
    str += "\nTeam average height: "
    str += String(round(height))
    str += "\nNumber of Experienced players: "
    str += String(experiencedPlayers)
    str += "\n"
    print(str)
}

func sendLetters (team : [[String: Any]]) -> Void {
    
    for player in team {
        let playerName :String = player["playerName"] as! String
        let guardianName :String = player["guardianName"] as! String
        let teamName :String = player["teamName"] as! String
        let teamPractiseTime :String = player["practiseTime"] as! String
    
        var str = "Hello "
        str += guardianName
        str += "\n"
        str += "Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal \n"
        str += "Your child "
        str += playerName
        str += " plays in team named "
        str += teamName
        str += ". Your first practise will be in "
        str += teamPractiseTime
        str += ".\nSee you at the field! \n - Coach \n"
        
        letters.append(str)
        print(str)
    }
}

func setTeams (teams : [[[String: Any]]]) -> Void {
    //get the team names
    var teamNames :[String] = []
    for (key, _) in teamsAndPractiseTimes{
        teamNames.append(key)
    }
    //Go trough all players
    for team in teams {
        let teamName = teamNames.removeFirst()
        let teamPractiseTime = teamsAndPractiseTimes[teamName]!
    
        for player in team{
            //player["teamName"] = teamName // -> error: cannot assign through subscript: 'player' is a 'let' constant
            var kid = player
            kid["teamName"] = teamName
            kid["practiseTime"] = teamPractiseTime
            switch teamName{
                case "Raptors" : teamRaptors.append(kid)
                case "Sharks" : teamSharks.append(kid)
                case "Dragons" : teamDragons.append(kid)
                default: print("Something is wrong")
            }
        }
    }
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


//iterate players on experienced team and keep adding player to teams changing team with index
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



//SEND LETTERS
setTeams(teams: teams)

//PRINT TEAMS INFO
printTeamsInfo(withTeam: teamRaptors)
printTeamsInfo(withTeam: teamSharks)
printTeamsInfo(withTeam: teamDragons)

sendLetters(team: teamRaptors)
sendLetters(team: teamSharks)
sendLetters(team: teamDragons)

/*
 ---------------------------------------------------------------
 Here is printed texts
 
 
 Team Raptors player amount: 6
 Team average height: 43.0
 Number of Experienced players: 3
 
 Team Sharks player amount: 6
 Team average height: 43.0
 Number of Experienced players: 4
 
 Team Dragons player amount: 6
 Team average height: 42.0
 Number of Experienced players: 4
 
 Hello Henrietta Dumas
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Suzane GreenBerg plays in team named Raptors. Your first practise will be in March 18, 1pm.
 See you at the field!
 - Coach
 
 Hello Jim and Jan Smith
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Joe Smith plays in team named Raptors. Your first practise will be in March 18, 1pm.
 See you at the field!
 - Coach
 
 Hello Bill and Hillary Stein
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Kimmy Stein plays in team named Raptors. Your first practise will be in March 18, 1pm.
 See you at the field!
 - Coach
 
 Hello David and Jamie Alaska
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Chloe Alaska plays in team named Raptors. Your first practise will be in March 18, 1pm.
 See you at the field!
 - Coach
 
 Hello Claire Willis
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Arnold Willis plays in team named Raptors. Your first practise will be in March 18, 1pm.
 See you at the field!
 - Coach
 
 Hello Sam and Elaine Kavalier
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Joe Kavalier plays in team named Raptors. Your first practise will be in March 18, 1pm.
 See you at the field!
 - Coach
 
 Hello Jeff Adams
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Sammy Adams plays in team named Sharks. Your first practise will be in March 17, 3pm.
 See you at the field!
 - Coach
 
 Hello Thomas Helm and Eva Jones
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Philip Helm plays in team named Sharks. Your first practise will be in March 17, 3pm.
 See you at the field!
 - Coach
 
 Hello Heather Bledsoe
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Karl Saygan plays in team named Sharks. Your first practise will be in March 17, 3pm.
 See you at the field!
 - Coach
 
 Hello Robin and Sarika Soto
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Diego Soto plays in team named Sharks. Your first practise will be in March 17, 3pm.
 See you at the field!
 - Coach
 
 Hello Aaron and Jill Finkelstein
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Ben Finkelstein plays in team named Sharks. Your first practise will be in March 17, 3pm.
 See you at the field!
 - Coach
 
 Hello Charles and Sylvia Gill
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Matt Gill plays in team named Sharks. Your first practise will be in March 17, 3pm.
 See you at the field!
 - Coach
 
 Hello Hyman and Rachel Krustofski
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Herschel Krustofski plays in team named Dragons. Your first practise will be in March 17, 1pm.
 See you at the field!
 - Coach
 
 Hello Sara and Jenny Bon
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Bill Bon plays in team named Dragons. Your first practise will be in March 17, 1pm.
 See you at the field!
 - Coach
 
 Hello Wynonna Brown
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Les Clay plays in team named Dragons. Your first practise will be in March 17, 1pm.
 See you at the field!
 - Coach
 
 Hello Clara Tanner
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Jill Tanner plays in team named Dragons. Your first practise will be in March 17, 1pm.
 See you at the field!
 - Coach
 
 Hello Wendy and Mike Gordon
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Eva Gordon plays in team named Dragons. Your first practise will be in March 17, 1pm.
 See you at the field!
 - Coach
 
 Hello Gala Dali
 Soccer teams are made. We made teams so that every team has equal amount of experienced players and teams average heights are almost equal
 Your child Sal Dali plays in team named Dragons. Your first practise will be in March 17, 1pm.
 See you at the field!
 - Coach 
 
*/






