//
//  MainPageViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 05/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class MainPageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {


    var subViewControllers = {
        return [UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PageOneViewController") as! PageOneViewController, UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(identifier: "PageTwoViewController")as! PageTwoViewController, UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PageThreeViewController")as! PageThreeViewController]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = self
        // Do any additional setup after loading the view.
        setViewControllers([subViewControllers[0]], direction: .forward, animated: true, completion: nil)

    }

    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return subViewControllers.count
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex: Int = subViewControllers.index(of: viewController) ?? 0
        if(currentIndex == 0) {
            return nil
        }
        return subViewControllers[currentIndex-1]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentIndex: Int = subViewControllers.index(of: viewController) ?? 0
        if(currentIndex >= subViewControllers.count-1) {
            return nil
        }
        return subViewControllers[currentIndex+1]
    }





}