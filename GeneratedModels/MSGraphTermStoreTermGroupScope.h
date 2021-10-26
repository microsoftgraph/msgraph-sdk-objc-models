// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTermStoreTermGroupScopeValue){

	MSGraphTermStoreTermGroupScopeGlobal = 0,
	MSGraphTermStoreTermGroupScopeSystem = 1,
	MSGraphTermStoreTermGroupScopeSiteCollection = 2,
	MSGraphTermStoreTermGroupScopeUnknownFutureValue = 3,
    MSGraphTermStoreTermGroupScopeEndOfEnum
};

@interface MSGraphTermStoreTermGroupScope : NSObject

+(MSGraphTermStoreTermGroupScope*) global;
+(MSGraphTermStoreTermGroupScope*) system;
+(MSGraphTermStoreTermGroupScope*) siteCollection;
+(MSGraphTermStoreTermGroupScope*) unknownFutureValue;

+(MSGraphTermStoreTermGroupScope*) UnknownEnumValue;

+(MSGraphTermStoreTermGroupScope*) termGroupScopeWithEnumValue:(MSGraphTermStoreTermGroupScopeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTermStoreTermGroupScopeValue enumValue;

@end


@interface NSString (MSGraphTermStoreTermGroupScope)

- (MSGraphTermStoreTermGroupScope*) toMSGraphTermStoreTermGroupScope;

@end
