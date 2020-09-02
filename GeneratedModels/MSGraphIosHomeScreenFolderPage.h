// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIosHomeScreenApp; 


#import "MSObject.h"

@interface MSGraphIosHomeScreenFolderPage : MSObject

@property (nonnull, nonatomic, setter=setApps:, getter=apps) NSArray* apps;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;

@end
