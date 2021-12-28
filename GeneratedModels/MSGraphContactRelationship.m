// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphContactRelationship.h"

@interface MSGraphContactRelationship () {
    MSGraphContactRelationshipValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphContactRelationshipValue enumValue;
@end

@implementation MSGraphContactRelationship

+ (MSGraphContactRelationship*) parent {
    static MSGraphContactRelationship *_parent;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parent = [[MSGraphContactRelationship alloc] init];
        _parent.enumValue = MSGraphContactRelationshipParent;
    });
    return _parent;
}
+ (MSGraphContactRelationship*) relative {
    static MSGraphContactRelationship *_relative;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _relative = [[MSGraphContactRelationship alloc] init];
        _relative.enumValue = MSGraphContactRelationshipRelative;
    });
    return _relative;
}
+ (MSGraphContactRelationship*) aide {
    static MSGraphContactRelationship *_aide;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _aide = [[MSGraphContactRelationship alloc] init];
        _aide.enumValue = MSGraphContactRelationshipAide;
    });
    return _aide;
}
+ (MSGraphContactRelationship*) doctor {
    static MSGraphContactRelationship *_doctor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _doctor = [[MSGraphContactRelationship alloc] init];
        _doctor.enumValue = MSGraphContactRelationshipDoctor;
    });
    return _doctor;
}
+ (MSGraphContactRelationship*) guardian {
    static MSGraphContactRelationship *_guardian;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _guardian = [[MSGraphContactRelationship alloc] init];
        _guardian.enumValue = MSGraphContactRelationshipGuardian;
    });
    return _guardian;
}
+ (MSGraphContactRelationship*) child {
    static MSGraphContactRelationship *_child;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _child = [[MSGraphContactRelationship alloc] init];
        _child.enumValue = MSGraphContactRelationshipChild;
    });
    return _child;
}
+ (MSGraphContactRelationship*) other {
    static MSGraphContactRelationship *_other;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _other = [[MSGraphContactRelationship alloc] init];
        _other.enumValue = MSGraphContactRelationshipOther;
    });
    return _other;
}
+ (MSGraphContactRelationship*) unknownFutureValue {
    static MSGraphContactRelationship *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphContactRelationship alloc] init];
        _unknownFutureValue.enumValue = MSGraphContactRelationshipUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphContactRelationship*) UnknownEnumValue {
    static MSGraphContactRelationship *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphContactRelationship alloc] init];
        _unknownValue.enumValue = MSGraphContactRelationshipEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphContactRelationship*) contactRelationshipWithEnumValue:(MSGraphContactRelationshipValue)val {

    switch(val)
    {
        case MSGraphContactRelationshipParent:
            return [MSGraphContactRelationship parent];
        case MSGraphContactRelationshipRelative:
            return [MSGraphContactRelationship relative];
        case MSGraphContactRelationshipAide:
            return [MSGraphContactRelationship aide];
        case MSGraphContactRelationshipDoctor:
            return [MSGraphContactRelationship doctor];
        case MSGraphContactRelationshipGuardian:
            return [MSGraphContactRelationship guardian];
        case MSGraphContactRelationshipChild:
            return [MSGraphContactRelationship child];
        case MSGraphContactRelationshipOther:
            return [MSGraphContactRelationship other];
        case MSGraphContactRelationshipUnknownFutureValue:
            return [MSGraphContactRelationship unknownFutureValue];
        case MSGraphContactRelationshipEndOfEnum:
        default:
            return [MSGraphContactRelationship UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphContactRelationshipParent:
            return @"parent";
        case MSGraphContactRelationshipRelative:
            return @"relative";
        case MSGraphContactRelationshipAide:
            return @"aide";
        case MSGraphContactRelationshipDoctor:
            return @"doctor";
        case MSGraphContactRelationshipGuardian:
            return @"guardian";
        case MSGraphContactRelationshipChild:
            return @"child";
        case MSGraphContactRelationshipOther:
            return @"other";
        case MSGraphContactRelationshipUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphContactRelationshipEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphContactRelationshipValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphContactRelationship)

- (MSGraphContactRelationship*) toMSGraphContactRelationship{

    if([self isEqualToString:@"parent"])
    {
          return [MSGraphContactRelationship parent];
    }
    else if([self isEqualToString:@"relative"])
    {
          return [MSGraphContactRelationship relative];
    }
    else if([self isEqualToString:@"aide"])
    {
          return [MSGraphContactRelationship aide];
    }
    else if([self isEqualToString:@"doctor"])
    {
          return [MSGraphContactRelationship doctor];
    }
    else if([self isEqualToString:@"guardian"])
    {
          return [MSGraphContactRelationship guardian];
    }
    else if([self isEqualToString:@"child"])
    {
          return [MSGraphContactRelationship child];
    }
    else if([self isEqualToString:@"other"])
    {
          return [MSGraphContactRelationship other];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphContactRelationship unknownFutureValue];
    }
    else {
        return [MSGraphContactRelationship UnknownEnumValue];
    }
}

@end
