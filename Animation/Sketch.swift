import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    var y : Double
    var h : Double
    var a : Double
    var k : Double
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        a = 0.008
        h = -250
        k = 500
    }
        
        // Change position
        // Draw an ellipse in the middle of the canvas
        
        x += 1
        y = -(a*pow(x+h,2))+k
        
        // parabola function: y=a(x-h)^2+k
        
        canvas.drawEllipse(centreX: Int(x), centreY: Int(y), width: 10, height: 10)
        
    }
    
}
