// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphConsentRequestFilterByCurrentUserOptionsValue){

	MSGraphConsentRequestFilterByCurrentUserOptionsReviewer = 0,
	MSGraphConsentRequestFilterByCurrentUserOptionsUnknownFutureValue = 1,
    MSGraphConsentRequestFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphConsentRequestFilterByCurrentUserOptions : NSObject

+(MSGraphConsentRequestFilterByCurrentUserOptions*) reviewer;
+(MSGraphConsentRequestFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphConsentRequestFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphConsentRequestFilterByCurrentUserOptions*) consentRequestFilterByCurrentUserOptionsWithEnumValue:(MSGraphConsentRequestFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphConsentRequestFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphConsentRequestFilterByCurrentUserOptions)

- (MSGraphConsentRequestFilterByCurrentUserOptions*) toMSGraphConsentRequestFilterByCurrentUserOptions;

@end
