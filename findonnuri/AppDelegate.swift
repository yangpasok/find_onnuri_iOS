//
//  AppDelegate.swift
//  findonnuri
//
//  Created by sangwu on 2020/04/08.
//  Copyright © 2020 YEPPI. All rights reserved.
//

import UIKit
import CoreData
import GoogleMobileAds

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        initGoogleAD()
        initializeWindowRoot()
        return true
    }

    private func initializeWindowRoot() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TestRootViewController()
        window?.makeKeyAndVisible()
    }

    private func initGoogleAD() {
        //모바일 광고 초기화
        //광고를 로드하기 전에 앱에서 GADMobileAds.sharedInstance의 startWithCompletionHandler: 메소드를 호출하여 Google 모바일 광고 SDK를 초기화해야 합니다. 이렇게 하면 SDK가 초기화되고 초기화가 완료될 때 (또는 30초의 제한시간이 경과한 후에) 완료 핸들러를 다시 호출합니다. 이 작업은 한 번만 수행하면 됩니다. 앱을 실행할 때 처리하는 것이 가장 좋으며 최대한 빨리 호출하는 것이 좋습니다.
        GADMobileAds.sharedInstance().start(completionHandler: nil)
    }
    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "findonnuri")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

