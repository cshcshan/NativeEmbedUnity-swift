//
//  main.swift
//  NativeEmbedUnity-swift
//
//  Created by Han Chen on 25/4/2016.
//  Copyright © 2016年 Han Chen. All rights reserved.
//

import Foundation
import UIKit

// override @UIApplicationMain
// http://stackoverflow.com/a/24021180/1060314

custom_unity_init(CommandLine.argc, CommandLine.unsafeArgv)
UIApplicationMain(CommandLine.argc,
                  UnsafeMutableRawPointer(CommandLine.unsafeArgv).bindMemory(to: UnsafeMutablePointer<Int8>.self, capacity: Int(CommandLine.argc)),
                  NSStringFromClass(UIApplication.self), NSStringFromClass(AppDelegate.self))
