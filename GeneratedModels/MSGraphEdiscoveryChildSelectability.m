// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdiscoveryChildSelectability.h"

@interface MSGraphEdiscoveryChildSelectability () {
    MSGraphEdiscoveryChildSelectabilityValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdiscoveryChildSelectabilityValue enumValue;
@end

@implementation MSGraphEdiscoveryChildSelectability

+ (MSGraphEdiscoveryChildSelectability*) one {
    static MSGraphEdiscoveryChildSelectability *_one;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _one = [[MSGraphEdiscoveryChildSelectability alloc] init];
        _one.enumValue = MSGraphEdiscoveryChildSelectabilityOne;
    });
    return _one;
}
+ (MSGraphEdiscoveryChildSelectability*) many {
    static MSGraphEdiscoveryChildSelectability *_many;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _many = [[MSGraphEdiscoveryChildSelectability alloc] init];
        _many.enumValue = MSGraphEdiscoveryChildSelectabilityMany;
    });
    return _many;
}

+ (MSGraphEdiscoveryChildSelectability*) UnknownEnumValue {
    static MSGraphEdiscoveryChildSelectability *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdiscoveryChildSelectability alloc] init];
        _unknownValue.enumValue = MSGraphEdiscoveryChildSelectabilityEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdiscoveryChildSelectability*) childSelectabilityWithEnumValue:(MSGraphEdiscoveryChildSelectabilityValue)val {

    switch(val)
    {
        case MSGraphEdiscoveryChildSelectabilityOne:
            return [MSGraphEdiscoveryChildSelectability one];
        case MSGraphEdiscoveryChildSelectabilityMany:
            return [MSGraphEdiscoveryChildSelectability many];
        case MSGraphEdiscoveryChildSelectabilityEndOfEnum:
        default:
            return [MSGraphEdiscoveryChildSelectability UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdiscoveryChildSelectabilityOne:
            return @"One";
        case MSGraphEdiscoveryChildSelectabilityMany:
            return @"Many";
        case MSGraphEdiscoveryChildSelectabilityEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdiscoveryChildSelectabilityValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdiscoveryChildSelectability)

- (MSGraphEdiscoveryChildSelectability*) toMSGraphEdiscoveryChildSelectability{

    if([self isEqualToString:@"One"])
    {
          return [MSGraphEdiscoveryChildSelectability one];
    }
    else if([self isEqualToString:@"Many"])
    {
          return [MSGraphEdiscoveryChildSelectability many];
    }
    else {
        return [MSGraphEdiscoveryChildSelectability UnknownEnumValue];
    }
}

@end
