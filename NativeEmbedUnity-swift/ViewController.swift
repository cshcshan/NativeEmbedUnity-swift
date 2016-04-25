//
//  ViewController.swift
//  NativeEmbedUnity-swift
//
//  Created by Han Chen on 25/4/2016.
//  Copyright © 2016年 Han Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func onLoadUnity(sender: AnyObject) {
    loadUnity()
  }
  
  @IBAction func onCallUnity(sender: AnyObject) {
    UnitySendMessage("EventBus", "Trigger", "Hello World")
  }
  
  func loadUnity() {
    let unityView = UnityGetGLView()
    
    self.view.addSubview(unityView)
    unityView.translatesAutoresizingMaskIntoConstraints = false
    
    let views = ["view": unityView];
    let w = NSLayoutConstraint.constraintsWithVisualFormat("|[view]-20-|", options: [], metrics: nil, views: views);
    let h = NSLayoutConstraint.constraintsWithVisualFormat("V:|-75-[view]-50-|", options: [], metrics: nil, views: views);
    
    view.addConstraints(w + h)
  }

}

