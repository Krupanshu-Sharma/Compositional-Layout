//
//  CellBuilder.swift
//  CompositionalLayout
//
//  Created by Krupanshu Sharma on 16/12/22.
//

import UIKit

public class CellBuilder {
    public static func getFeaturedCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "featured", for: indexPath) as? Featured {
            cell.setup(title: "Category Title", subtitle: "Here one line subtitle")
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    public static func getTextCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "text", for: indexPath) as? Text {
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    public static func getListCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let appIndex = indexPath.row
        let app = APP_LIST[appIndex]
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? Cell {
            cell.appCategory.text = app.category
            cell.appTitle.text = app.title
            cell.iconView.backgroundColor = UIColor(rgb: app.color)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
}
