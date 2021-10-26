// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSubjectRightsRequestTypeValue){

	MSGraphSubjectRightsRequestTypeExport = 0,
	MSGraphSubjectRightsRequestTypeDelete = 1,
	MSGraphSubjectRightsRequestTypeAccess = 2,
	MSGraphSubjectRightsRequestTypeTagForAction = 3,
	MSGraphSubjectRightsRequestTypeUnknownFutureValue = 4,
    MSGraphSubjectRightsRequestTypeEndOfEnum
};

@interface MSGraphSubjectRightsRequestType : NSObject

+(MSGraphSubjectRightsRequestType*) export;
+(MSGraphSubjectRightsRequestType*) delete;
+(MSGraphSubjectRightsRequestType*) access;
+(MSGraphSubjectRightsRequestType*) tagForAction;
+(MSGraphSubjectRightsRequestType*) unknownFutureValue;

+(MSGraphSubjectRightsRequestType*) UnknownEnumValue;

+(MSGraphSubjectRightsRequestType*) subjectRightsRequestTypeWithEnumValue:(MSGraphSubjectRightsRequestTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSubjectRightsRequestTypeValue enumValue;

@end


@interface NSString (MSGraphSubjectRightsRequestType)

- (MSGraphSubjectRightsRequestType*) toMSGraphSubjectRightsRequestType;

@end
