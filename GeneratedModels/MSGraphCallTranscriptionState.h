// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCallTranscriptionStateValue){

	MSGraphCallTranscriptionStateNotStarted = 0,
	MSGraphCallTranscriptionStateActive = 1,
	MSGraphCallTranscriptionStateInactive = 2,
	MSGraphCallTranscriptionStateUnknownFutureValue = 3,
    MSGraphCallTranscriptionStateEndOfEnum
};

@interface MSGraphCallTranscriptionState : NSObject

+(MSGraphCallTranscriptionState*) notStarted;
+(MSGraphCallTranscriptionState*) active;
+(MSGraphCallTranscriptionState*) inactive;
+(MSGraphCallTranscriptionState*) unknownFutureValue;

+(MSGraphCallTranscriptionState*) UnknownEnumValue;

+(MSGraphCallTranscriptionState*) callTranscriptionStateWithEnumValue:(MSGraphCallTranscriptionStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCallTranscriptionStateValue enumValue;

@end


@interface NSString (MSGraphCallTranscriptionState)

- (MSGraphCallTranscriptionState*) toMSGraphCallTranscriptionState;

@end
