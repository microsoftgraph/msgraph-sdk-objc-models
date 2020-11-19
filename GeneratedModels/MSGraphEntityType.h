// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEntityTypeValue){

	MSGraphEntityTypeEvent = 0,
	MSGraphEntityTypeMessage = 1,
	MSGraphEntityTypeDriveItem = 2,
	MSGraphEntityTypeExternalItem = 4,
	MSGraphEntityTypeSite = 5,
	MSGraphEntityTypeList = 6,
	MSGraphEntityTypeListItem = 7,
	MSGraphEntityTypeDrive = 8,
	MSGraphEntityTypeUnknownfuturevalue = 9,
    MSGraphEntityTypeEndOfEnum
};

@interface MSGraphEntityType : NSObject

+(MSGraphEntityType*) event;
+(MSGraphEntityType*) message;
+(MSGraphEntityType*) driveItem;
+(MSGraphEntityType*) externalItem;
+(MSGraphEntityType*) site;
+(MSGraphEntityType*) list;
+(MSGraphEntityType*) listItem;
+(MSGraphEntityType*) drive;
+(MSGraphEntityType*) unknownfuturevalue;

+(MSGraphEntityType*) UnknownEnumValue;

+(MSGraphEntityType*) entityTypeWithEnumValue:(MSGraphEntityTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEntityTypeValue enumValue;

@end


@interface NSString (MSGraphEntityType)

- (MSGraphEntityType*) toMSGraphEntityType;

@end
