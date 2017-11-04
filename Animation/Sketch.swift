import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var q : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        q = 250
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        q -= 1
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.red
        canvas.borderColor = Color.red
        canvas.drawEllipse(centreX: x, centreY: x, width: 50, height: 50)
        
        canvas.fillColor = Color.yellow
        canvas.borderColor = Color.yellow
        canvas.drawEllipse(centreX: q, centreY: q, width: 50, height: 50)
        
        canvas.fillColor = Color.blue
        canvas.borderColor = Color.blue
        canvas.drawEllipse(centreX: x, centreY: q, width: 50, height: 50)
        
        canvas.fillColor = Color.green
        canvas.borderColor = Color.green
        canvas.drawEllipse(centreX: q, centreY: x, width: 50, height: 50)
        
        
        
    }
    
}
