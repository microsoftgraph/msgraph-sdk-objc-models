// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessPackageRequestTypeValue){

	MSGraphAccessPackageRequestTypeNotSpecified = 0,
	MSGraphAccessPackageRequestTypeUserAdd = 1,
	MSGraphAccessPackageRequestTypeUserUpdate = 2,
	MSGraphAccessPackageRequestTypeUserRemove = 3,
	MSGraphAccessPackageRequestTypeAdminAdd = 4,
	MSGraphAccessPackageRequestTypeAdminUpdate = 5,
	MSGraphAccessPackageRequestTypeAdminRemove = 6,
	MSGraphAccessPackageRequestTypeSystemAdd = 7,
	MSGraphAccessPackageRequestTypeSystemUpdate = 8,
	MSGraphAccessPackageRequestTypeSystemRemove = 9,
	MSGraphAccessPackageRequestTypeOnBehalfAdd = 10,
	MSGraphAccessPackageRequestTypeUnknownFutureValue = 11,
    MSGraphAccessPackageRequestTypeEndOfEnum
};

@interface MSGraphAccessPackageRequestType : NSObject

+(MSGraphAccessPackageRequestType*) notSpecified;
+(MSGraphAccessPackageRequestType*) userAdd;
+(MSGraphAccessPackageRequestType*) userUpdate;
+(MSGraphAccessPackageRequestType*) userRemove;
+(MSGraphAccessPackageRequestType*) adminAdd;
+(MSGraphAccessPackageRequestType*) adminUpdate;
+(MSGraphAccessPackageRequestType*) adminRemove;
+(MSGraphAccessPackageRequestType*) systemAdd;
+(MSGraphAccessPackageRequestType*) systemUpdate;
+(MSGraphAccessPackageRequestType*) systemRemove;
+(MSGraphAccessPackageRequestType*) onBehalfAdd;
+(MSGraphAccessPackageRequestType*) unknownFutureValue;

+(MSGraphAccessPackageRequestType*) UnknownEnumValue;

+(MSGraphAccessPackageRequestType*) accessPackageRequestTypeWithEnumValue:(MSGraphAccessPackageRequestTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessPackageRequestTypeValue enumValue;

@end


@interface NSString (MSGraphAccessPackageRequestType)

- (MSGraphAccessPackageRequestType*) toMSGraphAccessPackageRequestType;

@end
