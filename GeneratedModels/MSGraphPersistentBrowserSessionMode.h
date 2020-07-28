// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPersistentBrowserSessionModeValue){

	MSGraphPersistentBrowserSessionModeAlways = 0,
	MSGraphPersistentBrowserSessionModeNever = 1,
    MSGraphPersistentBrowserSessionModeEndOfEnum
};

@interface MSGraphPersistentBrowserSessionMode : NSObject

+(MSGraphPersistentBrowserSessionMode*) always;
+(MSGraphPersistentBrowserSessionMode*) never;

+(MSGraphPersistentBrowserSessionMode*) UnknownEnumValue;

+(MSGraphPersistentBrowserSessionMode*) persistentBrowserSessionModeWithEnumValue:(MSGraphPersistentBrowserSessionModeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPersistentBrowserSessionModeValue enumValue;

@end


@interface NSString (MSGraphPersistentBrowserSessionMode)

- (MSGraphPersistentBrowserSessionMode*) toMSGraphPersistentBrowserSessionMode;

@end
