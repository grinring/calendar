//
//  AlbumCollectionViewLayout.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/10.
//

import UIKit

class AlbumCollectionViewLayout: UICollectionViewLayout {
    private var cache: [UICollectionViewLayoutAttributes] = []
    private var contentHeight: CGFloat = 0
    private var contentWidth: CGFloat {
        guard let collectionView = collectionView else { return 0 }
        return collectionView.bounds.width
    }
    
    override var collectionViewContentSize: CGSize {
        return CGSize(width: contentWidth, height: contentHeight)
    }
    
    override func prepare() {
        guard let collectionView = collectionView else { return }
        
        // キャッシュのクリア
        cache.removeAll()
        contentHeight = 0
        
        // セルのサイズとスペーシング
        let cellWidth = contentWidth * 0.5
        let cellHeight = cellWidth * 1.1
        let spacing: CGFloat = 10
        let numberOfColumns = 2
        
        var xOffset: [CGFloat] = []
        for column in 0..<numberOfColumns {
            xOffset.append(CGFloat(column) * (cellWidth + spacing))
        }
        
        var column = 0
        var yOffset: [CGFloat] = Array(repeating: 0, count: numberOfColumns)
        
        // セクション内のセル数を取得
        let numberOfItems = collectionView.numberOfItems(inSection: 0)
        
        for item in 0..<numberOfItems {
            let indexPath = IndexPath(item: item, section: 0)
            
            // レイアウト属性を作成
            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
            let frame = CGRect(x: xOffset[column], y: yOffset[column], width: cellWidth, height: cellHeight)
            attributes.frame = frame
            cache.append(attributes)
            
            // 次のセルのyOffsetを更新
            yOffset[column] += cellHeight + spacing
            
            // 次の列に移動（交互に配置するため）
            column = column < (numberOfColumns - 1) ? (column + 1) : 0
        }
        
        // コンテンツ全体の高さを設定
        contentHeight = yOffset.max() ?? 0
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return cache.filter { $0.frame.intersects(rect) }
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return cache[indexPath.item]
    }
    
}
