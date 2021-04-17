//
//  Path.swift
//  TesteIOS
//
//  Created by Fernando Totta on 17/04/21.
//

import Foundation

class Path {
    var currentPath: String
    let separetor = "/"
     
    var pattern = #"^[a-zA-Z]"#
    
    init (currentPath: String) {
        self.currentPath = currentPath
    }
    
    func cd(path: String) -> String{
        var pathToBe = [String]()
        if !path.hasPrefix(self.separetor) {
            pathToBe.append(contentsOf: currentPath.components(separatedBy: separetor))
        }
        
        path.components(separatedBy: separetor).forEach { elements in
            let match = matches(for: pattern, text: elements)
            
            if elements.contains("..") && pathToBe.count > 0 {
                pathToBe.remove(at: pathToBe.count - 1 )
            }
            else if !match && !elements.isEmpty && !elements.contains(pattern) && !currentPath.contains(pattern) {
                pathToBe.removeAll()
                currentPath.removeAll()
                currentPath = "InvalidPathExpression"
            } else {
                pathToBe.append(elements)
            }
        }
        if currentPath.contains("InvalidPathExpression") {
            return currentPath
        } else {
            currentPath = join(separator: separetor, words: pathToBe)
        }
        return currentPath
    }
    
    private func join(separator: String, words:[String]) -> String {
        var result = ""
        var first = true
        
        for word in words {
            if first {
                first = false
            } else {
                result += separetor
            }
            result += word
        }
        
        return result
        
    }
    
    private func matches(for regex: String, text: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let nsString = text as NSString
            let results = regex.matches(in: text, range: NSRange(location: 0, length: nsString.length))
            return !results.isEmpty
        }catch let error {
            print("Invalid Regex: \(error.localizedDescription)" )
            return false
        }
    }
}
