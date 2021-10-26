// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdiscoveryDataSourceScopesValue){

	MSGraphEdiscoveryDataSourceScopesNone = 0,
	MSGraphEdiscoveryDataSourceScopesAllTenantMailboxes = 1,
	MSGraphEdiscoveryDataSourceScopesAllTenantSites = 2,
	MSGraphEdiscoveryDataSourceScopesAllCaseCustodians = 4,
	MSGraphEdiscoveryDataSourceScopesAllCaseNoncustodialDataSources = 8,
	MSGraphEdiscoveryDataSourceScopesUnknownFutureValue = 16,
    MSGraphEdiscoveryDataSourceScopesEndOfEnum
};

@interface MSGraphEdiscoveryDataSourceScopes : NSObject

+(MSGraphEdiscoveryDataSourceScopes*) none;
+(MSGraphEdiscoveryDataSourceScopes*) allTenantMailboxes;
+(MSGraphEdiscoveryDataSourceScopes*) allTenantSites;
+(MSGraphEdiscoveryDataSourceScopes*) allCaseCustodians;
+(MSGraphEdiscoveryDataSourceScopes*) allCaseNoncustodialDataSources;
+(MSGraphEdiscoveryDataSourceScopes*) unknownFutureValue;

+(MSGraphEdiscoveryDataSourceScopes*) UnknownEnumValue;

+(MSGraphEdiscoveryDataSourceScopes*) dataSourceScopesWithEnumValue:(MSGraphEdiscoveryDataSourceScopesValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdiscoveryDataSourceScopesValue enumValue;

@end


@interface NSString (MSGraphEdiscoveryDataSourceScopes)

- (MSGraphEdiscoveryDataSourceScopes*) toMSGraphEdiscoveryDataSourceScopes;

@end
