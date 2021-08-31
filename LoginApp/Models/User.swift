//
//  User.swift
//  LoginApp
//
//  Created by Оксана Щукина on 01.09.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(
            login: "Oksana",
            password: "password",
            person: Person(
                emojiPerson: "💁🏻‍♀️",
                name: "Оксана",
                surname: "Щукина",
                aboutCollege: "Закончила бакалавриат в КАИ в 2016 году по специальности Прикладная информатика. Также закончила магистратуру в КАИ по специальности Прикладная информатика в экономике",
                aboutWork: "Хоть я и училась типа на программиста, стала менеджером проекта. Работаю в данном профессии более 6 лет. Но пора что-то менять, поэтому я прохожу курс Swiftbook :)"
            )
        )
    }
}

struct Person {
    let emojiPerson: String
    let name: String
    let surname: String
    let aboutCollege: String
    let aboutWork: String
}
