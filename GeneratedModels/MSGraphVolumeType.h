// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphVolumeTypeValue){

	MSGraphVolumeTypeOperatingSystemVolume = 1,
	MSGraphVolumeTypeFixedDataVolume = 2,
	MSGraphVolumeTypeRemovableDataVolume = 3,
	MSGraphVolumeTypeUnknownFutureValue = 4,
    MSGraphVolumeTypeEndOfEnum
};

@interface MSGraphVolumeType : NSObject

+(MSGraphVolumeType*) operatingSystemVolume;
+(MSGraphVolumeType*) fixedDataVolume;
+(MSGraphVolumeType*) removableDataVolume;
+(MSGraphVolumeType*) unknownFutureValue;

+(MSGraphVolumeType*) UnknownEnumValue;

+(MSGraphVolumeType*) volumeTypeWithEnumValue:(MSGraphVolumeTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphVolumeTypeValue enumValue;

@end


@interface NSString (MSGraphVolumeType)

- (MSGraphVolumeType*) toMSGraphVolumeType;

@end
