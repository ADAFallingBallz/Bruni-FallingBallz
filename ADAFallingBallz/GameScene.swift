//
//  GameScene.swift
//  ADAFallingBallz
//
//  Created by 정현 on 2023/06/25.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let path = CGMutablePath()

    func Circle () {
    
        let circle = SKShapeNode(circleOfRadius: 80)
        circle.fillColor = .blue
        circle.strokeColor = .blue
        
        addChild(circle)
    }
    
    func Rectangle() {
        let rectangle = SKShapeNode(rectOf: CGSize(width: 100, height: 100))
        rectangle.fillColor = .green
        rectangle.strokeColor = .green
        
        addChild(rectangle)
    }
    
    func Triangle() {
        let triangle = SKShapeNode()
        
        let trianglePath = CGMutablePath()
        trianglePath.move(to: CGPoint(x: 0 , y: 75))
        trianglePath.addLine(to: CGPoint(x: 75 , y : -75))
        trianglePath.addLine(to: CGPoint(x: -75 , y : -75))
        trianglePath.closeSubpath()
        
        triangle.path = trianglePath
        
        triangle.fillColor = .red
        triangle.strokeColor = .red
        addChild(triangle)
    }
    
    override func didMove(to view: SKView) {
    
       
       
        Circle()
        Rectangle()
        Triangle()
        
       
    }
    
    
    
}
