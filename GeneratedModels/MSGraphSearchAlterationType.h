// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSearchAlterationTypeValue){

	MSGraphSearchAlterationTypeSuggestion = 0,
	MSGraphSearchAlterationTypeModification = 1,
	MSGraphSearchAlterationTypeUnknownFutureValue = 2,
    MSGraphSearchAlterationTypeEndOfEnum
};

@interface MSGraphSearchAlterationType : NSObject

+(MSGraphSearchAlterationType*) suggestion;
+(MSGraphSearchAlterationType*) modification;
+(MSGraphSearchAlterationType*) unknownFutureValue;

+(MSGraphSearchAlterationType*) UnknownEnumValue;

+(MSGraphSearchAlterationType*) searchAlterationTypeWithEnumValue:(MSGraphSearchAlterationTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSearchAlterationTypeValue enumValue;

@end


@interface NSString (MSGraphSearchAlterationType)

- (MSGraphSearchAlterationType*) toMSGraphSearchAlterationType;

@end
