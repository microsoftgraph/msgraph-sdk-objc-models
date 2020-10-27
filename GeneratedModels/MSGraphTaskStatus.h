// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTaskStatusValue){

	MSGraphTaskStatusNotStarted = 0,
	MSGraphTaskStatusInProgress = 1,
	MSGraphTaskStatusCompleted = 2,
	MSGraphTaskStatusWaitingOnOthers = 3,
	MSGraphTaskStatusDeferred = 4,
    MSGraphTaskStatusEndOfEnum
};

@interface MSGraphTaskStatus : NSObject

+(MSGraphTaskStatus*) notStarted;
+(MSGraphTaskStatus*) inProgress;
+(MSGraphTaskStatus*) completed;
+(MSGraphTaskStatus*) waitingOnOthers;
+(MSGraphTaskStatus*) deferred;

+(MSGraphTaskStatus*) UnknownEnumValue;

+(MSGraphTaskStatus*) taskStatusWithEnumValue:(MSGraphTaskStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTaskStatusValue enumValue;

@end


@interface NSString (MSGraphTaskStatus)

- (MSGraphTaskStatus*) toMSGraphTaskStatus;

@end
