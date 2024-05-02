#import <UIKit/UIKit.h>

%hook SBFHomeGrabberSettings
	-(void)setEdgeProtectOverride:(NSInteger)arg1 {
		%orig(false);
	}
%end
