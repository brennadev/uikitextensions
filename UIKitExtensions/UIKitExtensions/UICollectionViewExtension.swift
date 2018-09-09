//
//  UICollectionViewExtension.swift
//  UIKitExtensions
/*
MIT License

Copyright (c) 2018 Brenna Olson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

import UIKit

// Makes accessing appropriate `UICollectionViewCell`s easier
public extension UICollectionView {
    /// Get the cell located at a point specified in the collection view's coordinates. If no cell is found at these coordinates, `nil` is returned.
    /// - parameter point: Point in collection view coordinates to look for cell at
    /// - returns: `UICollectionViewCell` under `point` or `nil` if no cell is found under `point`
    public func cellForItem(at point: CGPoint) -> UICollectionViewCell? {
        if let indexPath = indexPathForItem(at: point) {
            return cellForItem(at: indexPath)
        }
        return nil
    }
    
    /// Easily get the index path to start inserting items at the end of a section
    /// - parameter section: Section of the collection view to find the last item in
    /// - returns: Index path of next available element in a section
    public func indexPathAfterLastItem(inSection section: Int) -> IndexPath {
        return IndexPath(item: numberOfItems(inSection: section), section: section)
    }
}
