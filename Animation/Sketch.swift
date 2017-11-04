import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    // Change in position of circle
    var dx : Int
    var dy : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 1, toButNotIncluding: 500)
        y = random(from: 1, toButNotIncluding: 500)
        
        
        // Set the change value
        dx = 2
        dy = 2
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Position Change
        x += dx
        y += dy
        
        
        // To Remove the Trail
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        
        // To Left
        if x < 0 {
            dx = 2// move right
        } // end of block
        
        // To Right
        if x > 490 { // touch right edge
            dx = -2 // move left
        }
        
        if y < 0 {
            dy = 2
        }
        
        if y > 490 {
            dy = -2
        }
        
        // Black Ball
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
    }
    
}
