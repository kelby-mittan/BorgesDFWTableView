//
//  Author.swift
//  BorgesDFWTableView
//
//  Created by Kelby Mittan on 11/16/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import Foundation

struct Author {
    let authorDFW = "David Foster Wallace"
    let authorBorges = "Jorge Luis Borges"
    let bookStory: String
    let quote: String
    
    static let dfw = [
        Author(bookStory: "Infinite Jest", quote: "\"Everybody is identical in their secret unspoken belief that way deep down they are different from everyone else.\""),
       Author(bookStory: "Infinite Jest", quote: "I do things like get in a taxi and say, \"The library, and step on it.\""),
       Author(bookStory: "Infinite Jest", quote: "\"You will become way less concerned with what other people think of you when you realize how seldom they do.\""),
       Author(bookStory: "Infinite Jest", quote: "\"It did what all ads are supposed to do: create an anxiety relievable by purchase.\""),
       Author(bookStory: "Infinite Jest", quote: "\"The thing about people who are truly and malignantly crazy: their real genius is for making the people around them think they themselves are crazy. In military science this is called Psy-Ops, for your info.\""),
       Author(bookStory: "Infinite Jest", quote: "\"...most Substance-addicted people are also addicted to thinking, meaning they have a compulsive and unhealthy relationship with their own thinking.\""),
       Author(bookStory: "Infinite Jest", quote: "\"You can be shaped, or you can be broken. There is not much in between. Try to learn. Be coachable. Try to learn from everybody, especially those who fail. This is hard. ... How promising you are as a Student of the Game is a function of what you can pay attention to without running away.\""),
       Author(bookStory: "Infinite Jest", quote: "\"Mediocrity is contextual.\""),
       Author(bookStory: "The Pale King", quote: "\"He knew who on the plane was in love, who would say they were in love because it was what you were supposed to say, and who would say they were not in love.\""),
       Author(bookStory: "The Pale King", quote: "\"The screen door had no screen but was still a screen door, which fact she thought upon.\""),
       Author(bookStory: "The Pale King", quote: "\"One paradox of professional writing is that books written solely for money and/or acclaim will almost never be good enough to garner either.\""),
       Author(bookStory: "The Pale King", quote: "\"If sensitive issues of governance can be made sufficiently dull and arcane, there will be no need for officials to hide or dissemble, because no one not directly involved will pay enough attention to cause trouble.\""),
       Author(bookStory: "Good Old Neon", quote: "\"What goes on inside is just too fast and huge and all interconnected for words to do more than barely sketch the outlines of at most one tiny little part of it at any given instant.\""),
       Author(bookStory: "Good Old Neon", quote: "\"Am I happy? is one of those questions that, if it has got to be asked, more or less dictates its own answer.\""),
       Author(bookStory: "Good Old Neon", quote: "\"As though inside you is this enormous room full of what seems like everything in the whole universe at one time or another and yet the only parts that get out have to somehow squeeze out through one of those tiny keyholes you see under the knob in older doors. As if we are all trying to see each other through these tiny keyholes.\"")
    ]
    
    static let borges = [
        Author(bookStory: "Book of Sand", quote: "\"I am not sure that I exist, actually. I am all the writers that I have read, all the people that I have met, all the women that I have loved; all the cities I have visited.\""),
        Author(bookStory: "Book of Sand", quote: "\"So plant your own gardens and decorate your own soul, instead of waiting for someone to bring you flowers.\""),
        Author(bookStory: "Book of Sand", quote: "\"Time is the substance I am made of. Time is a river which sweeps me along, but I am the river; it is a tiger which destroys me, but I am the tiger; it is a fire which consumes me, but I am the fire.\""),
        Author(bookStory: "The Aleph", quote: "\"I saw all the mirrors on earth and none of them reflected me.\""),
        Author(bookStory: "The Aleph", quote: "\"All language is a set of symbols whose use among its speakers assumes a share past\""),
        Author(bookStory: "The Aleph", quote: "\"But let no one imagine that we were mere ascetics. There is no more complex pleasure than thought, and it was to thought that we delivered ourselves over.\""),
        Author(bookStory: "Library of Babel", quote: "\"I know of a wild region whose librarians repudiate the vain superstitious custom of seeking any sense in books and compare it to looking for meaning in dreams or in the chaotic lines of one's hands . . . They admit that the inventors of writing imitated the twenty-five natural symbols, but they maintain that this application is accidental and that books in themselves mean nothing. This opinion - we shall see - is not altogether false."),
        Author(bookStory: "Library of Babel", quote: "\"The universe (which others call the Library) is composed of an indefinite, perhaps infinite number of hexagonal galleries.\"")]
    
    static func getSectionsDFW(_ authorArr: [Author]) -> [[Author]] {
        let sortedBooks = authorArr.sorted { $0.bookStory < $1.bookStory }
        let bookTitle: Set<String> = Set(authorArr.map { $0.bookStory })
       
        var sectionsArr = Array(repeating: [Author](), count: bookTitle.count)
        var currentIndex = 0
        var currentBook = sortedBooks.first?.bookStory ?? "DFW"
        
        for book in sortedBooks {
            if book.bookStory == currentBook {
                sectionsArr[currentIndex].append(book)
            } else {
                currentIndex += 1
                currentBook = book.bookStory
                sectionsArr[currentIndex].append(book)
            }
            
        }
        
        return sectionsArr
    }
    
    
}
