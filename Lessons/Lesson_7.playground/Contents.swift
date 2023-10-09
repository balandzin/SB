import UIKit

//: # Lesson 7
//: ## Классы

let postTitle = "Classes"
let postBody = "Text of the article"
let postAuthor = "Aleksey Efimov"

let postTitle2 = "Property of classes"
let postBody2 = "Text of the article"
let postAuthor2 = postAuthor

class Post {
    var title = ""
    var body = ""
    var author = ""
    
    var numberOfComments: Int {
        comments.count
    }
    
    private var comments: [String] = []
    
    func add(comment: String) {
        comments.append(comment)
    }
    
    func showComments() {
        for comment in comments {
            print(comment)
        }
    }
}

let postOne = Post()

postOne.title = "This is my first post"
postOne.body = "Hello"
postOne.author = "Aleksey Efimov"

postOne.add(comment: "Thank you!!!")
postOne.add(comment: "+1")

//postOne.comments.removeAll()
postOne.numberOfComments

postOne.showComments()

print("The number of comments to the post \(postOne.title) is \(postOne.numberOfComments)")

let postTwo = Post()

postTwo.title = "Second post"
postTwo.body = "A lot of text"

//print("The number of comments to the post \(postTwo.title) is \(postTwo.numberOfComments)")

//print("Author \(postOne.author) has published new post '\(postOne.title)' with text '\(postOne.body)'")
//print("Author \(postTwo.author) has published new post '\(postTwo.title)' with text '\(postTwo.body)'")

postOne === postTwo

//: ### Методы классов. Инициализаторы

class Person {
    let name: String
    var age: Int
    
    init(name: String, age: Int = 0) {
        self.name = name
        self.age = age
    }
}

let person = Person(name: "Tim", age: 62)
person.name
person.age

let tom = Person(name: "Tom")
tom.age = 12
