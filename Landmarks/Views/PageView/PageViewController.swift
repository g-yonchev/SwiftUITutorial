//
//  PageViewController.swift
//  Landmarks
//
//  Created by Zhoro on 11/26/25.
//

import SwiftUI
import UIKit

struct PageViewControllerr<Page: View>: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIPageViewController

    var pages: [Page]

    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll, navigationOrientation: .horizontal
        )
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers([UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
    }
}
