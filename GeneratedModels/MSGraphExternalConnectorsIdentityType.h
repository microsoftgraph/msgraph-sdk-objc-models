// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphExternalConnectorsIdentityTypeValue){

	MSGraphExternalConnectorsIdentityTypeUser = 1,
	MSGraphExternalConnectorsIdentityTypeGroup = 2,
	MSGraphExternalConnectorsIdentityTypeExternalGroup = 3,
	MSGraphExternalConnectorsIdentityTypeUnknownFutureValue = 4,
    MSGraphExternalConnectorsIdentityTypeEndOfEnum
};

@interface MSGraphExternalConnectorsIdentityType : NSObject

+(MSGraphExternalConnectorsIdentityType*) user;
+(MSGraphExternalConnectorsIdentityType*) group;
+(MSGraphExternalConnectorsIdentityType*) externalGroup;
+(MSGraphExternalConnectorsIdentityType*) unknownFutureValue;

+(MSGraphExternalConnectorsIdentityType*) UnknownEnumValue;

+(MSGraphExternalConnectorsIdentityType*) identityTypeWithEnumValue:(MSGraphExternalConnectorsIdentityTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphExternalConnectorsIdentityTypeValue enumValue;

@end


@interface NSString (MSGraphExternalConnectorsIdentityType)

- (MSGraphExternalConnectorsIdentityType*) toMSGraphExternalConnectorsIdentityType;

@end
