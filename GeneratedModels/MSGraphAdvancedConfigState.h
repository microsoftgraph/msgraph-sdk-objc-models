// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAdvancedConfigStateValue){

	MSGraphAdvancedConfigStateDefault = 0,
	MSGraphAdvancedConfigStateEnabled = 1,
	MSGraphAdvancedConfigStateDisabled = 2,
	MSGraphAdvancedConfigStateUnknownFutureValue = 3,
    MSGraphAdvancedConfigStateEndOfEnum
};

@interface MSGraphAdvancedConfigState : NSObject

+(MSGraphAdvancedConfigState*) default;
+(MSGraphAdvancedConfigState*) enabled;
+(MSGraphAdvancedConfigState*) disabled;
+(MSGraphAdvancedConfigState*) unknownFutureValue;

+(MSGraphAdvancedConfigState*) UnknownEnumValue;

+(MSGraphAdvancedConfigState*) advancedConfigStateWithEnumValue:(MSGraphAdvancedConfigStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAdvancedConfigStateValue enumValue;

@end


@interface NSString (MSGraphAdvancedConfigState)

- (MSGraphAdvancedConfigState*) toMSGraphAdvancedConfigState;

@end
