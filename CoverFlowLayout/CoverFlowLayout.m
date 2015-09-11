//
//  CoverFlowLayout.m
//  CoverFlowLayout
//
//  Created by Alp Eren Can on 10/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "CoverFlowLayout.h"

@implementation CoverFlowLayout

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray *attributes = [super layoutAttributesForElementsInRect:rect];
    
    CGRect visibleRegion;
    visibleRegion.origin = self.collectionView.contentOffset;
    visibleRegion.size = self.collectionView.bounds.size;
    
    for (UICollectionViewLayoutAttributes *attribute in attributes) {
        
        CGFloat itemCenterX = (attribute.center.x - visibleRegion.origin.x);
        
        CGFloat zoom = (itemCenterX - visibleRegion.size.width/2) / (visibleRegion.size.width/2);
        
        attribute.transform3D = CATransform3DConcat(CATransform3DScale(attribute.transform3D ,1.5 - fabs(zoom), 1.5 - fabs(zoom), 0), CATransform3DRotate(attribute.transform3D, M_PI * fabs(zoom) / 2, 0, attribute.size.height, 0));
        attribute.alpha = 1.2 - fabs(zoom);
        attribute.zIndex = 2.0 - fabs(zoom);
        
    }
    
    return attributes;

}

-(BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    return YES;
}

@end
