// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWellknownListNameValue){

	MSGraphWellknownListNameNone = 0,
	MSGraphWellknownListNameDefaultList = 1,
	MSGraphWellknownListNameFlaggedEmails = 2,
	MSGraphWellknownListNameUnknownFutureValue = 3,
    MSGraphWellknownListNameEndOfEnum
};

@interface MSGraphWellknownListName : NSObject

+(MSGraphWellknownListName*) none;
+(MSGraphWellknownListName*) defaultList;
+(MSGraphWellknownListName*) flaggedEmails;
+(MSGraphWellknownListName*) unknownFutureValue;

+(MSGraphWellknownListName*) UnknownEnumValue;

+(MSGraphWellknownListName*) wellknownListNameWithEnumValue:(MSGraphWellknownListNameValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWellknownListNameValue enumValue;

@end


@interface NSString (MSGraphWellknownListName)

- (MSGraphWellknownListName*) toMSGraphWellknownListName;

@end
