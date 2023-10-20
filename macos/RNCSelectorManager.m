//
//  RNCSelectorManager.m
//  RNCSelector
//
//  Created by Jihoo Byeon on 10/20/23.
//

#import "RNCSelectorManager.h"
#import "RNCCheckBox.h"
#import "RNCRadioButton.h"

@implementation RNCCheckBoxManager

RCT_EXPORT_MODULE()

- (NSView *)view
{
	NSView *view = [RNCCheckBox init];
	return view;
}

RCT_EXPORT_VIEW_PROPERTY(title, NSString *)
RCT_EXPORT_VIEW_PROPERTY(isSelected, NSInteger)

@end

@implementation RNCRadioButtonManager

RCT_EXPORT_MODULE()

- (NSView *)view
{
	NSView *view = [RNCRadioButton init];
	return view;
}

RCT_EXPORT_VIEW_PROPERTY(titles, NSArray<NSString *>)
RCT_EXPORT_VIEW_PROPERTY(direction, NSString)
RCT_EXPORT_VIEW_PROPERTY(selectedIndex, NSInteger)

@end
