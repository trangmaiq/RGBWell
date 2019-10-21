//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Trang Mai on 10/21/19.
//  Copyright © 2019 Trang Mai. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    var r = 0.0
    var g = 0.0
    var b = 0.0
    var a = 1.0
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    @IBOutlet weak var rSlider: NSSlider!
    @IBOutlet weak var gSlider: NSSlider!
    @IBOutlet weak var bSlider: NSSlider!
    
    override var windowNibName: NSNib.Name? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        rSlider.doubleValue = r
        gSlider.doubleValue = g
        bSlider.doubleValue = b
        
        updateColor()
    }
    
    @IBAction func adjustRed(sender: NSSlider) {
        r = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjectGreen(sender: NSSlider) {
        g = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustBlue(sender: NSSlider) {
        b = sender.doubleValue
        updateColor()
    }
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(a))
        colorWell.color = newColor
    }
}
