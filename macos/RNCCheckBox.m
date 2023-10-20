//
//  RNCCheckBox.m
//  RNCSelector
//
//  Created by 변지후 on 10/20/23.
//

#import "RNCCheckBox.h"

@implementation RNCCheckBox

- (instancetype)init
{
	self = [super init];
	if (self) {
		NSButton *cb = [[NSButton alloc] initWithFrame:NSMakeRect(0, 0, 50, 50)];
		[cb setTitle:_title];
		[cb setTarget:self];
		[cb setAction:@selector(clicked:)];
		[self addSubview:cb];
	}
	return self;
}

- (void)clicked:(id)sender
{
	NSButton *cb = (NSButton *)sender;
}

@end
