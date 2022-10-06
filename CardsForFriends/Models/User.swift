//
//  User.swift
//  CardsForFriends
//
//  Created by Andrey Sandler on 05.10.2022.
//

struct User {
    let username: String
    let password: String
    let card: Card
    
    static func getUser() -> User {
        User(
            username: "Andrey",
            password: "Andrey",
            card: .getCard()
        )
    }
}

struct Card {
    let name: String
    let surname: String
    let yearsOld: Int
    let habitat: String
    let hobby: String
    let favoriteFood: String
    let description: String
    
    static func getCard() -> Card {
        Card(
            name: "Андрей",
            surname: "Сандлер",
            yearsOld: 20,
            habitat: "Воронеж",
            hobby: "Домашние тренировки",
            favoriteFood: "Бун Ча Тхит Ныонг",
            description: "Это карточка Андрея."
        )
    }
}
