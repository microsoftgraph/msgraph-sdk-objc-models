// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphImplicitGrantSettings; 


#import "MSObject.h"

@interface MSGraphWebApplication : MSObject

@property (nullable, nonatomic, setter=setHomePageUrl:, getter=homePageUrl) NSString* homePageUrl;
@property (nonnull, nonatomic, setter=setRedirectUris:, getter=redirectUris) NSArray* redirectUris;
@property (nullable, nonatomic, setter=setLogoutUrl:, getter=logoutUrl) NSString* logoutUrl;
@property (nullable, nonatomic, setter=setImplicitGrantSettings:, getter=implicitGrantSettings) MSGraphImplicitGrantSettings* implicitGrantSettings;

@end
