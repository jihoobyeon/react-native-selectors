//
//  RNCRadioButton.h
//  RNCSelector
//
//  Created by Jihoo Byeon on 10/20/23.
//

#ifndef RNCRadioButton_h
#define RNCRadioButton_h

#import <AppKit/AppKit.h>

@interface RNCRadioButton : NSView

@property (nonatomic, copy) NSArray<NSString *> *titles;
@property (nonatomic, strong) NSString *direction;
@property (nonatomic, assign) NSInteger selectedIndex;

@end

#endif /* RNCRadioButton_h */
