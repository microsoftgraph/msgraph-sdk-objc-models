// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindowsAutopilotDeviceDeletionStateValue){

	MSGraphWindowsAutopilotDeviceDeletionStateUnknown = 0,
	MSGraphWindowsAutopilotDeviceDeletionStateFailed = 1,
	MSGraphWindowsAutopilotDeviceDeletionStateAccepted = 2,
	MSGraphWindowsAutopilotDeviceDeletionStateError = 3,
    MSGraphWindowsAutopilotDeviceDeletionStateEndOfEnum
};

@interface MSGraphWindowsAutopilotDeviceDeletionState : NSObject

+(MSGraphWindowsAutopilotDeviceDeletionState*) unknown;
+(MSGraphWindowsAutopilotDeviceDeletionState*) failed;
+(MSGraphWindowsAutopilotDeviceDeletionState*) accepted;
+(MSGraphWindowsAutopilotDeviceDeletionState*) error;

+(MSGraphWindowsAutopilotDeviceDeletionState*) UnknownEnumValue;

+(MSGraphWindowsAutopilotDeviceDeletionState*) windowsAutopilotDeviceDeletionStateWithEnumValue:(MSGraphWindowsAutopilotDeviceDeletionStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindowsAutopilotDeviceDeletionStateValue enumValue;

@end


@interface NSString (MSGraphWindowsAutopilotDeviceDeletionState)

- (MSGraphWindowsAutopilotDeviceDeletionState*) toMSGraphWindowsAutopilotDeviceDeletionState;

@end
