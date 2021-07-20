// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCallRecordsPstnCallDurationSourceValue){

	MSGraphCallRecordsPstnCallDurationSourceMicrosoft = 0,
	MSGraphCallRecordsPstnCallDurationSourceOperator = 1,
    MSGraphCallRecordsPstnCallDurationSourceEndOfEnum
};

@interface MSGraphCallRecordsPstnCallDurationSource : NSObject

+(MSGraphCallRecordsPstnCallDurationSource*) microsoft;
+(MSGraphCallRecordsPstnCallDurationSource*) operator;

+(MSGraphCallRecordsPstnCallDurationSource*) UnknownEnumValue;

+(MSGraphCallRecordsPstnCallDurationSource*) pstnCallDurationSourceWithEnumValue:(MSGraphCallRecordsPstnCallDurationSourceValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCallRecordsPstnCallDurationSourceValue enumValue;

@end


@interface NSString (MSGraphCallRecordsPstnCallDurationSource)

- (MSGraphCallRecordsPstnCallDurationSource*) toMSGraphCallRecordsPstnCallDurationSource;

@end
