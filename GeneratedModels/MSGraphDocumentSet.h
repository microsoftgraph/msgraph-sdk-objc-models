// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphContentTypeInfo, MSGraphDocumentSetContent, MSGraphColumnDefinition; 


#import "MSObject.h"

@interface MSGraphDocumentSet : MSObject

@property (nullable, nonatomic, setter=setAllowedContentTypes:, getter=allowedContentTypes) NSArray* allowedContentTypes;
@property (nullable, nonatomic, setter=setDefaultContents:, getter=defaultContents) NSArray* defaultContents;
@property (nonatomic, setter=setPropagateWelcomePageChanges:, getter=propagateWelcomePageChanges) BOOL propagateWelcomePageChanges;
@property (nonatomic, setter=setShouldPrefixNameToFile:, getter=shouldPrefixNameToFile) BOOL shouldPrefixNameToFile;
@property (nullable, nonatomic, setter=setWelcomePageUrl:, getter=welcomePageUrl) NSString* welcomePageUrl;
@property (nullable, nonatomic, setter=setSharedColumns:, getter=sharedColumns) NSArray* sharedColumns;
@property (nullable, nonatomic, setter=setWelcomePageColumns:, getter=welcomePageColumns) NSArray* welcomePageColumns;

@end
