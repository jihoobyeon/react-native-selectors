//
//  RNCCheckBox.h
//  RNCSelector
//
//  Created by Jihoo Byeon on 10/20/23.
//

#ifndef RNCCheckBox_h
#define RNCCheckBox_h

#import <AppKit/AppKit.h>

@interface RNCCheckBox : NSView

@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) BOOL isSelected;

@end

#endif /* RNCCheckBox_h */
