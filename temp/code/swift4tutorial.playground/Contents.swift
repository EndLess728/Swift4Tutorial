//Deinitialization in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
//Deinitialization for custom classes.Example:
class Stock {
    static var coinsInStock = 10_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfDistributedCoins = min(numberOfCoinsRequested, coinsInStock)
        coinsInStock -= numberOfDistributedCoins
        return numberOfDistributedCoins
    }
    static func receive(coins: Int) {
        coinsInStock += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Stock.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Stock.distribute(coins: coins)
    }
    deinit {
        Stock.receive(coins: coinsInPurse)
    }
}
var playerOne: Player? = Player(coins: 1200)
print("A new player has joined the game with \(playerOne!.coinsInPurse) coins")
playerOne!.win(coins: 200)
print("There are now \(Stock.coinsInStock) coins left in the bank")
















