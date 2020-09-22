// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRunAsAccountTypeValue){

	MSGraphRunAsAccountTypeSystem = 0,
	MSGraphRunAsAccountTypeUser = 1,
    MSGraphRunAsAccountTypeEndOfEnum
};

@interface MSGraphRunAsAccountType : NSObject

+(MSGraphRunAsAccountType*) system;
+(MSGraphRunAsAccountType*) user;

+(MSGraphRunAsAccountType*) UnknownEnumValue;

+(MSGraphRunAsAccountType*) runAsAccountTypeWithEnumValue:(MSGraphRunAsAccountTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRunAsAccountTypeValue enumValue;

@end


@interface NSString (MSGraphRunAsAccountType)

- (MSGraphRunAsAccountType*) toMSGraphRunAsAccountType;

@end
