//
//  RNCRadioButton.m
//  RNCSelector
//
//  Created by Jihoo Byeon on 10/20/23.
//

#import "RNCRadioButton.h"

@implementation RNCRadioButton

- (void)setTitles:(NSArray<NSString *> *)titles
{
	if ([_direction isEqual:@"row"])
	{
		NSMatrix *group = [[NSMatrix alloc] initWithFrame:NSMakeRect(0, 0, 100, 50 * titles.count)
											mode:NSRadioModeMatrix
											cellClass:nil
											numberOfRows:titles.count
											numberOfColumns:1];
		[group setAutorecalculatesCellSize:YES];
		
		for (int j = 0; j < titles.count; ++j)
		{
			NSButtonCell *rb = [group cellAtRow:j column:0];
			[rb setTitle:titles[j]];
			[rb setTag:j + 1];
		}
		
		[group setTarget:self];
		[group setAction:@selector(radioSelected:)];
		[self addSubview:group];
	}
	else if ([_direction isEqual:@"column"])
	{
		NSMatrix *group = [[NSMatrix alloc] initWithFrame:NSMakeRect(0, 0, 100 * titles.count, 50)
											mode:NSRadioModeMatrix
											cellClass:nil
											numberOfRows:1
											numberOfColumns:titles.count];
		[group setAutorecalculatesCellSize:YES];
		
		for (int j = 0; j < titles.count; ++j)
		{
			NSButtonCell *rb = [group cellAtRow:0 column:j];
			[rb setTitle:titles[j]];
			[rb setTag:j];
		}
		
		[group setTarget:self];
		[group setAction:@selector(radioSelected:)];
		[self addSubview:group];
	}
	else {}
}

- (void)radioSelected:(id)sender
{
	NSMatrix *group = (NSMatrix *)sender;
	_selectedIndex = [[group selectedCell] tag];
}

@end
