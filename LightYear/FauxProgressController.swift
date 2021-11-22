//
//  FauxProgressViewController.swift
//  LightYear
//
//  Created by Spotlight Deveaux on 2021-11-21.
//

import AppKit
import Foundation

class FauxProgressClient: NSObject {
    @objc dynamic var fasterInterfaceRecommendation = "Try buying a better Wi-Fi router and not cheaping out."
}

class FauxProgressViewController: NSViewController {
    // Needed for backup disk and internal disk
    let coreTypes = Bundle(path: "/System/Library/CoreServices/CoreTypes.bundle")!
    let storage = Bundle(path: "/System/Library/Extensions/IOStorageFamily.kext")!

    // Needed for view, apparently
    @IBOutlet var intertitleSpacer: NSLayoutConstraint!
    @IBOutlet var progressIndicator: NSProgressIndicator!
    @IBOutlet var recommendationField: NSTextField!
    @IBOutlet var sourceIconView: NSImageView!
    @IBOutlet var sourceNameField: NSTextField!
    @IBOutlet var targetIconView: NSImageView!
    @IBOutlet var thisComputerArrowOffset: NSLayoutConstraint!
    @IBOutlet var thisComputerLeftOffset: NSLayoutConstraint!
    @IBOutlet var toArrowIconView: NSImageView!

    @objc dynamic var showNetworkRecommendation = true
    @objc var progressClient = FauxProgressClient()

    @objc dynamic var showCurrentConnection = true
    @objc dynamic var sourceIcon = NSImage()
    @objc dynamic var bytesRemainingString = "25000000000 bytes remaining"
    @objc dynamic var timeRemainingString = "years remaining. millenia, even, if you will"
    @objc dynamic var currentWirelessNetworkNameString = "FoxNet"
    @objc dynamic var shouldShowWirelessNetworkName = true
    @objc dynamic var progressString = "About 25 years remaining..."
    @objc dynamic var targetName = "Macintosh HD"
    @objc dynamic var sourceName = "Backups"
    @objc dynamic var currentConnectionIcon = NSImage(named: "NSNetwork")
    @objc dynamic var targetIcon = NSImage()

    override func viewDidLoad() {
        super.viewDidLoad()

        sourceIcon = coreTypes.image(forResource: "GenericTimeMachineDiskIcon")!
        targetIcon = storage.image(forResource: "Internal")!
    }
}
