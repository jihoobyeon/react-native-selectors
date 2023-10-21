//
//  RNCCheckBox.m
//  RNCSelector
//
//  Created by Jihoo Byeon on 10/20/23.
//

#import "RNCCheckBox.h"

@implementation RNCCheckBox

- (instancetype)init
{
	self = [super initWithFrame:NSMakeRect(50, -100, 50, -100)];
	if (self) {
		_title = @"";
		_isSelected = YES;
		NSButton *cb = [[NSButton alloc] initWithFrame:self.frame];
		[cb setTitle:_title];
		[cb setButtonType:NSButtonTypeSwitch];
		[cb setTarget:self];
		[cb setState:_isSelected];
		[cb setAction:@selector(clicked:)];
		[self addSubview:cb];
	}
	return self;
}

- (void)setTitle:(NSString *)title
{
	if (![_title isEqual:title])
		_title = [title copy];
}

- (void)setIsSelected:(BOOL)isSelected
{
	if (_isSelected != isSelected)
		_isSelected = isSelected;
}

- (void)clicked:(id)sender
{
	NSButton *cb = (NSButton *)sender;
	NSLog(@"테스트");
	[cb setState:_isSelected];
}

@end

