// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessPackageCatalogStateValue){

	MSGraphAccessPackageCatalogStateUnpublished = 1,
	MSGraphAccessPackageCatalogStatePublished = 2,
	MSGraphAccessPackageCatalogStateUnknownFutureValue = 3,
    MSGraphAccessPackageCatalogStateEndOfEnum
};

@interface MSGraphAccessPackageCatalogState : NSObject

+(MSGraphAccessPackageCatalogState*) unpublished;
+(MSGraphAccessPackageCatalogState*) published;
+(MSGraphAccessPackageCatalogState*) unknownFutureValue;

+(MSGraphAccessPackageCatalogState*) UnknownEnumValue;

+(MSGraphAccessPackageCatalogState*) accessPackageCatalogStateWithEnumValue:(MSGraphAccessPackageCatalogStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessPackageCatalogStateValue enumValue;

@end


@interface NSString (MSGraphAccessPackageCatalogState)

- (MSGraphAccessPackageCatalogState*) toMSGraphAccessPackageCatalogState;

@end
