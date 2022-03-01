// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessPackageFilterByCurrentUserOptionsValue){

	MSGraphAccessPackageFilterByCurrentUserOptionsAllowedRequestor = 1,
	MSGraphAccessPackageFilterByCurrentUserOptionsUnknownFutureValue = 99,
    MSGraphAccessPackageFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphAccessPackageFilterByCurrentUserOptions : NSObject

+(MSGraphAccessPackageFilterByCurrentUserOptions*) allowedRequestor;
+(MSGraphAccessPackageFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphAccessPackageFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphAccessPackageFilterByCurrentUserOptions*) accessPackageFilterByCurrentUserOptionsWithEnumValue:(MSGraphAccessPackageFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessPackageFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphAccessPackageFilterByCurrentUserOptions)

- (MSGraphAccessPackageFilterByCurrentUserOptions*) toMSGraphAccessPackageFilterByCurrentUserOptions;

@end
