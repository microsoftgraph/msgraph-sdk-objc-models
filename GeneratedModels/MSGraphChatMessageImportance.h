// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphChatMessageImportanceValue){

	MSGraphChatMessageImportanceNormal = 0,
	MSGraphChatMessageImportanceHigh = 1,
	MSGraphChatMessageImportanceUrgent = 2,
	MSGraphChatMessageImportanceUnknownFutureValue = 3,
    MSGraphChatMessageImportanceEndOfEnum
};

@interface MSGraphChatMessageImportance : NSObject

+(MSGraphChatMessageImportance*) normal;
+(MSGraphChatMessageImportance*) high;
+(MSGraphChatMessageImportance*) urgent;
+(MSGraphChatMessageImportance*) unknownFutureValue;

+(MSGraphChatMessageImportance*) UnknownEnumValue;

+(MSGraphChatMessageImportance*) chatMessageImportanceWithEnumValue:(MSGraphChatMessageImportanceValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphChatMessageImportanceValue enumValue;

@end


@interface NSString (MSGraphChatMessageImportance)

- (MSGraphChatMessageImportance*) toMSGraphChatMessageImportance;

@end
