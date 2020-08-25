// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphManagedBrowserTypeValue){

	MSGraphManagedBrowserTypeNotConfigured = 0,
	MSGraphManagedBrowserTypeMicrosoftEdge = 1,
    MSGraphManagedBrowserTypeEndOfEnum
};

@interface MSGraphManagedBrowserType : NSObject

+(MSGraphManagedBrowserType*) notConfigured;
+(MSGraphManagedBrowserType*) microsoftEdge;

+(MSGraphManagedBrowserType*) UnknownEnumValue;

+(MSGraphManagedBrowserType*) managedBrowserTypeWithEnumValue:(MSGraphManagedBrowserTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphManagedBrowserTypeValue enumValue;

@end


@interface NSString (MSGraphManagedBrowserType)

- (MSGraphManagedBrowserType*) toMSGraphManagedBrowserType;

@end
