//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, Hello go, 1, javascript!!&$%^&"


let words = str.lowercaseString.componentsSeparatedByCharactersInSet(.punctuationCharacterSet()).joinWithSeparator(" ").componentsSeparatedByString(" ").filter{ !$0.isEmpty }

let a = str.lowercaseString.componentsSeparatedByCharactersInSet(.symbolCharacterSet()).joinWithSeparator(" ").componentsSeparatedByCharactersInSet(.punctuationCharacterSet()).joinWithSeparator(" ").componentsSeparatedByString(" ").filter {!$0.isEmpty}


let wordLowerCase = str.lowercaseString
let removePunc = wordLowerCase.componentsSeparatedByCharactersInSet(.punctuationCharacterSet())
let stringOfWords = removePunc.joinWithSeparator(" ")
let removeSymbols = stringOfWords.componentsSeparatedByCharactersInSet(.symbolCharacterSet()).joinWithSeparator(" ").componentsSeparatedByString(" ")
let filteredWords = removeSymbols.filter { !$0.isEmpty }
//print(filteredWords)

let b = str.lowercaseString.componentsSeparatedByCharactersInSet(.punctuationCharacterSet()).flatMap {$0}.filter {!$0.isEmpty}


print(b)

//print(a)

var counter = 1
var dict: [String: Int] = [:]
words


for word in words {
   
    if !dict.keys.contains(word)  {
        dict[word] = 1
    } else {
        dict[word]! += 1
    }
    
}

dict

let sentence = "Hello, this : is .. a  string?"

extension String {
    var words: [String] {
        return componentsSeparatedByCharactersInSet(.punctuationCharacterSet()).joinWithSeparator("").componentsSeparatedByString(" ").filter{!$0.isEmpty}
    }
}

let myWordList = sentence.words  // ["Hello", "this", "is", "a", "string"]
