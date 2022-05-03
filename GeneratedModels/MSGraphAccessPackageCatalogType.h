// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessPackageCatalogTypeValue){

	MSGraphAccessPackageCatalogTypeUserManaged = 1,
	MSGraphAccessPackageCatalogTypeServiceDefault = 2,
	MSGraphAccessPackageCatalogTypeServiceManaged = 3,
	MSGraphAccessPackageCatalogTypeUnknownFutureValue = 4,
    MSGraphAccessPackageCatalogTypeEndOfEnum
};

@interface MSGraphAccessPackageCatalogType : NSObject

+(MSGraphAccessPackageCatalogType*) userManaged;
+(MSGraphAccessPackageCatalogType*) serviceDefault;
+(MSGraphAccessPackageCatalogType*) serviceManaged;
+(MSGraphAccessPackageCatalogType*) unknownFutureValue;

+(MSGraphAccessPackageCatalogType*) UnknownEnumValue;

+(MSGraphAccessPackageCatalogType*) accessPackageCatalogTypeWithEnumValue:(MSGraphAccessPackageCatalogTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessPackageCatalogTypeValue enumValue;

@end


@interface NSString (MSGraphAccessPackageCatalogType)

- (MSGraphAccessPackageCatalogType*) toMSGraphAccessPackageCatalogType;

@end
