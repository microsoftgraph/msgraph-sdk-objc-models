// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessPackageSubjectTypeValue){

	MSGraphAccessPackageSubjectTypeNotSpecified = 0,
	MSGraphAccessPackageSubjectTypeUser = 1,
	MSGraphAccessPackageSubjectTypeServicePrincipal = 2,
	MSGraphAccessPackageSubjectTypeUnknownFutureValue = 3,
    MSGraphAccessPackageSubjectTypeEndOfEnum
};

@interface MSGraphAccessPackageSubjectType : NSObject

+(MSGraphAccessPackageSubjectType*) notSpecified;
+(MSGraphAccessPackageSubjectType*) user;
+(MSGraphAccessPackageSubjectType*) servicePrincipal;
+(MSGraphAccessPackageSubjectType*) unknownFutureValue;

+(MSGraphAccessPackageSubjectType*) UnknownEnumValue;

+(MSGraphAccessPackageSubjectType*) accessPackageSubjectTypeWithEnumValue:(MSGraphAccessPackageSubjectTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessPackageSubjectTypeValue enumValue;

@end


@interface NSString (MSGraphAccessPackageSubjectType)

- (MSGraphAccessPackageSubjectType*) toMSGraphAccessPackageSubjectType;

@end
