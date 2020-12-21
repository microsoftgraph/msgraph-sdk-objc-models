// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentity; 


#import "MSObject.h"

@interface MSGraphSharingLink : MSObject

@property (nullable, nonatomic, setter=setApplication:, getter=application) MSGraphIdentity* application;
@property (nonatomic, setter=setPreventsDownload:, getter=preventsDownload) BOOL preventsDownload;
@property (nullable, nonatomic, setter=setScope:, getter=scope) NSString* scope;
@property (nullable, nonatomic, setter=setType:, getter=type) NSString* type;
@property (nullable, nonatomic, setter=setWebHtml:, getter=webHtml) NSString* webHtml;
@property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;

@end
