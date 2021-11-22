//
//  ViewController.swift
//  LightYear
//
//  Created by Spotlight Deveaux on 2021-11-21.
//

import Cocoa

class ViewController: NSViewController {
    let migration = Bundle(path: "/System/Library/PrivateFrameworks/SystemMigration.framework")!

    override func viewDidLoad() {
        super.viewDidLoad()

        let controller = FauxProgressViewController(nibName: "SMMigrationProgressView", bundle: migration)
        view = controller.view
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}
