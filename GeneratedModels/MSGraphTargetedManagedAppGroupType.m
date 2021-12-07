// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTargetedManagedAppGroupType.h"

@interface MSGraphTargetedManagedAppGroupType () {
    MSGraphTargetedManagedAppGroupTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTargetedManagedAppGroupTypeValue enumValue;
@end

@implementation MSGraphTargetedManagedAppGroupType

+ (MSGraphTargetedManagedAppGroupType*) selectedPublicApps {
    static MSGraphTargetedManagedAppGroupType *_selectedPublicApps;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _selectedPublicApps = [[MSGraphTargetedManagedAppGroupType alloc] init];
        _selectedPublicApps.enumValue = MSGraphTargetedManagedAppGroupTypeSelectedPublicApps;
    });
    return _selectedPublicApps;
}
+ (MSGraphTargetedManagedAppGroupType*) allCoreMicrosoftApps {
    static MSGraphTargetedManagedAppGroupType *_allCoreMicrosoftApps;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allCoreMicrosoftApps = [[MSGraphTargetedManagedAppGroupType alloc] init];
        _allCoreMicrosoftApps.enumValue = MSGraphTargetedManagedAppGroupTypeAllCoreMicrosoftApps;
    });
    return _allCoreMicrosoftApps;
}
+ (MSGraphTargetedManagedAppGroupType*) allMicrosoftApps {
    static MSGraphTargetedManagedAppGroupType *_allMicrosoftApps;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allMicrosoftApps = [[MSGraphTargetedManagedAppGroupType alloc] init];
        _allMicrosoftApps.enumValue = MSGraphTargetedManagedAppGroupTypeAllMicrosoftApps;
    });
    return _allMicrosoftApps;
}
+ (MSGraphTargetedManagedAppGroupType*) allApps {
    static MSGraphTargetedManagedAppGroupType *_allApps;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allApps = [[MSGraphTargetedManagedAppGroupType alloc] init];
        _allApps.enumValue = MSGraphTargetedManagedAppGroupTypeAllApps;
    });
    return _allApps;
}

+ (MSGraphTargetedManagedAppGroupType*) UnknownEnumValue {
    static MSGraphTargetedManagedAppGroupType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTargetedManagedAppGroupType alloc] init];
        _unknownValue.enumValue = MSGraphTargetedManagedAppGroupTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTargetedManagedAppGroupType*) targetedManagedAppGroupTypeWithEnumValue:(MSGraphTargetedManagedAppGroupTypeValue)val {

    switch(val)
    {
        case MSGraphTargetedManagedAppGroupTypeSelectedPublicApps:
            return [MSGraphTargetedManagedAppGroupType selectedPublicApps];
        case MSGraphTargetedManagedAppGroupTypeAllCoreMicrosoftApps:
            return [MSGraphTargetedManagedAppGroupType allCoreMicrosoftApps];
        case MSGraphTargetedManagedAppGroupTypeAllMicrosoftApps:
            return [MSGraphTargetedManagedAppGroupType allMicrosoftApps];
        case MSGraphTargetedManagedAppGroupTypeAllApps:
            return [MSGraphTargetedManagedAppGroupType allApps];
        case MSGraphTargetedManagedAppGroupTypeEndOfEnum:
        default:
            return [MSGraphTargetedManagedAppGroupType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTargetedManagedAppGroupTypeSelectedPublicApps:
            return @"selectedPublicApps";
        case MSGraphTargetedManagedAppGroupTypeAllCoreMicrosoftApps:
            return @"allCoreMicrosoftApps";
        case MSGraphTargetedManagedAppGroupTypeAllMicrosoftApps:
            return @"allMicrosoftApps";
        case MSGraphTargetedManagedAppGroupTypeAllApps:
            return @"allApps";
        case MSGraphTargetedManagedAppGroupTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTargetedManagedAppGroupTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTargetedManagedAppGroupType)

- (MSGraphTargetedManagedAppGroupType*) toMSGraphTargetedManagedAppGroupType{

    if([self isEqualToString:@"selectedPublicApps"])
    {
          return [MSGraphTargetedManagedAppGroupType selectedPublicApps];
    }
    else if([self isEqualToString:@"allCoreMicrosoftApps"])
    {
          return [MSGraphTargetedManagedAppGroupType allCoreMicrosoftApps];
    }
    else if([self isEqualToString:@"allMicrosoftApps"])
    {
          return [MSGraphTargetedManagedAppGroupType allMicrosoftApps];
    }
    else if([self isEqualToString:@"allApps"])
    {
          return [MSGraphTargetedManagedAppGroupType allApps];
    }
    else {
        return [MSGraphTargetedManagedAppGroupType UnknownEnumValue];
    }
}

@end
