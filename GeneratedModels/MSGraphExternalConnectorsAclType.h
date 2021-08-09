// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphExternalConnectorsAclTypeValue){

	MSGraphExternalConnectorsAclTypeUser = 1,
	MSGraphExternalConnectorsAclTypeGroup = 2,
	MSGraphExternalConnectorsAclTypeEveryone = 3,
	MSGraphExternalConnectorsAclTypeEveryoneExceptGuests = 4,
	MSGraphExternalConnectorsAclTypeExternalGroup = 5,
	MSGraphExternalConnectorsAclTypeUnknownFutureValue = 6,
    MSGraphExternalConnectorsAclTypeEndOfEnum
};

@interface MSGraphExternalConnectorsAclType : NSObject

+(MSGraphExternalConnectorsAclType*) user;
+(MSGraphExternalConnectorsAclType*) group;
+(MSGraphExternalConnectorsAclType*) everyone;
+(MSGraphExternalConnectorsAclType*) everyoneExceptGuests;
+(MSGraphExternalConnectorsAclType*) externalGroup;
+(MSGraphExternalConnectorsAclType*) unknownFutureValue;

+(MSGraphExternalConnectorsAclType*) UnknownEnumValue;

+(MSGraphExternalConnectorsAclType*) aclTypeWithEnumValue:(MSGraphExternalConnectorsAclTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphExternalConnectorsAclTypeValue enumValue;

@end


@interface NSString (MSGraphExternalConnectorsAclType)

- (MSGraphExternalConnectorsAclType*) toMSGraphExternalConnectorsAclType;

@end
