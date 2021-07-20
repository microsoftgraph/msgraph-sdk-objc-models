// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphExternalConnectorsAccessTypeValue){

	MSGraphExternalConnectorsAccessTypeGrant = 1,
	MSGraphExternalConnectorsAccessTypeDeny = 2,
	MSGraphExternalConnectorsAccessTypeUnknownFutureValue = 3,
    MSGraphExternalConnectorsAccessTypeEndOfEnum
};

@interface MSGraphExternalConnectorsAccessType : NSObject

+(MSGraphExternalConnectorsAccessType*) grant;
+(MSGraphExternalConnectorsAccessType*) deny;
+(MSGraphExternalConnectorsAccessType*) unknownFutureValue;

+(MSGraphExternalConnectorsAccessType*) UnknownEnumValue;

+(MSGraphExternalConnectorsAccessType*) accessTypeWithEnumValue:(MSGraphExternalConnectorsAccessTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphExternalConnectorsAccessTypeValue enumValue;

@end


@interface NSString (MSGraphExternalConnectorsAccessType)

- (MSGraphExternalConnectorsAccessType*) toMSGraphExternalConnectorsAccessType;

@end
