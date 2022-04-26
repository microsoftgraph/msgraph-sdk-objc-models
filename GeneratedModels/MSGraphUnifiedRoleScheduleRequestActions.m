// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphUnifiedRoleScheduleRequestActions.h"

@interface MSGraphUnifiedRoleScheduleRequestActions () {
    MSGraphUnifiedRoleScheduleRequestActionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphUnifiedRoleScheduleRequestActionsValue enumValue;
@end

@implementation MSGraphUnifiedRoleScheduleRequestActions

+ (MSGraphUnifiedRoleScheduleRequestActions*) adminAssign {
    static MSGraphUnifiedRoleScheduleRequestActions *_adminAssign;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminAssign = [[MSGraphUnifiedRoleScheduleRequestActions alloc] init];
        _adminAssign.enumValue = MSGraphUnifiedRoleScheduleRequestActionsAdminAssign;
    });
    return _adminAssign;
}
+ (MSGraphUnifiedRoleScheduleRequestActions*) adminUpdate {
    static MSGraphUnifiedRoleScheduleRequestActions *_adminUpdate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminUpdate = [[MSGraphUnifiedRoleScheduleRequestActions alloc] init];
        _adminUpdate.enumValue = MSGraphUnifiedRoleScheduleRequestActionsAdminUpdate;
    });
    return _adminUpdate;
}
+ (MSGraphUnifiedRoleScheduleRequestActions*) adminRemove {
    static MSGraphUnifiedRoleScheduleRequestActions *_adminRemove;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminRemove = [[MSGraphUnifiedRoleScheduleRequestActions alloc] init];
        _adminRemove.enumValue = MSGraphUnifiedRoleScheduleRequestActionsAdminRemove;
    });
    return _adminRemove;
}
+ (MSGraphUnifiedRoleScheduleRequestActions*) selfActivate {
    static MSGraphUnifiedRoleScheduleRequestActions *_selfActivate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _selfActivate = [[MSGraphUnifiedRoleScheduleRequestActions alloc] init];
        _selfActivate.enumValue = MSGraphUnifiedRoleScheduleRequestActionsSelfActivate;
    });
    return _selfActivate;
}
+ (MSGraphUnifiedRoleScheduleRequestActions*) selfDeactivate {
    static MSGraphUnifiedRoleScheduleRequestActions *_selfDeactivate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _selfDeactivate = [[MSGraphUnifiedRoleScheduleRequestActions alloc] init];
        _selfDeactivate.enumValue = MSGraphUnifiedRoleScheduleRequestActionsSelfDeactivate;
    });
    return _selfDeactivate;
}
+ (MSGraphUnifiedRoleScheduleRequestActions*) adminExtend {
    static MSGraphUnifiedRoleScheduleRequestActions *_adminExtend;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminExtend = [[MSGraphUnifiedRoleScheduleRequestActions alloc] init];
        _adminExtend.enumValue = MSGraphUnifiedRoleScheduleRequestActionsAdminExtend;
    });
    return _adminExtend;
}
+ (MSGraphUnifiedRoleScheduleRequestActions*) adminRenew {
    static MSGraphUnifiedRoleScheduleRequestActions *_adminRenew;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminRenew = [[MSGraphUnifiedRoleScheduleRequestActions alloc] init];
        _adminRenew.enumValue = MSGraphUnifiedRoleScheduleRequestActionsAdminRenew;
    });
    return _adminRenew;
}
+ (MSGraphUnifiedRoleScheduleRequestActions*) selfExtend {
    static MSGraphUnifiedRoleScheduleRequestActions *_selfExtend;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _selfExtend = [[MSGraphUnifiedRoleScheduleRequestActions alloc] init];
        _selfExtend.enumValue = MSGraphUnifiedRoleScheduleRequestActionsSelfExtend;
    });
    return _selfExtend;
}
+ (MSGraphUnifiedRoleScheduleRequestActions*) selfRenew {
    static MSGraphUnifiedRoleScheduleRequestActions *_selfRenew;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _selfRenew = [[MSGraphUnifiedRoleScheduleRequestActions alloc] init];
        _selfRenew.enumValue = MSGraphUnifiedRoleScheduleRequestActionsSelfRenew;
    });
    return _selfRenew;
}
+ (MSGraphUnifiedRoleScheduleRequestActions*) unknownFutureValue {
    static MSGraphUnifiedRoleScheduleRequestActions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphUnifiedRoleScheduleRequestActions alloc] init];
        _unknownFutureValue.enumValue = MSGraphUnifiedRoleScheduleRequestActionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphUnifiedRoleScheduleRequestActions*) UnknownEnumValue {
    static MSGraphUnifiedRoleScheduleRequestActions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphUnifiedRoleScheduleRequestActions alloc] init];
        _unknownValue.enumValue = MSGraphUnifiedRoleScheduleRequestActionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphUnifiedRoleScheduleRequestActions*) unifiedRoleScheduleRequestActionsWithEnumValue:(MSGraphUnifiedRoleScheduleRequestActionsValue)val {

    switch(val)
    {
        case MSGraphUnifiedRoleScheduleRequestActionsAdminAssign:
            return [MSGraphUnifiedRoleScheduleRequestActions adminAssign];
        case MSGraphUnifiedRoleScheduleRequestActionsAdminUpdate:
            return [MSGraphUnifiedRoleScheduleRequestActions adminUpdate];
        case MSGraphUnifiedRoleScheduleRequestActionsAdminRemove:
            return [MSGraphUnifiedRoleScheduleRequestActions adminRemove];
        case MSGraphUnifiedRoleScheduleRequestActionsSelfActivate:
            return [MSGraphUnifiedRoleScheduleRequestActions selfActivate];
        case MSGraphUnifiedRoleScheduleRequestActionsSelfDeactivate:
            return [MSGraphUnifiedRoleScheduleRequestActions selfDeactivate];
        case MSGraphUnifiedRoleScheduleRequestActionsAdminExtend:
            return [MSGraphUnifiedRoleScheduleRequestActions adminExtend];
        case MSGraphUnifiedRoleScheduleRequestActionsAdminRenew:
            return [MSGraphUnifiedRoleScheduleRequestActions adminRenew];
        case MSGraphUnifiedRoleScheduleRequestActionsSelfExtend:
            return [MSGraphUnifiedRoleScheduleRequestActions selfExtend];
        case MSGraphUnifiedRoleScheduleRequestActionsSelfRenew:
            return [MSGraphUnifiedRoleScheduleRequestActions selfRenew];
        case MSGraphUnifiedRoleScheduleRequestActionsUnknownFutureValue:
            return [MSGraphUnifiedRoleScheduleRequestActions unknownFutureValue];
        case MSGraphUnifiedRoleScheduleRequestActionsEndOfEnum:
        default:
            return [MSGraphUnifiedRoleScheduleRequestActions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphUnifiedRoleScheduleRequestActionsAdminAssign:
            return @"adminAssign";
        case MSGraphUnifiedRoleScheduleRequestActionsAdminUpdate:
            return @"adminUpdate";
        case MSGraphUnifiedRoleScheduleRequestActionsAdminRemove:
            return @"adminRemove";
        case MSGraphUnifiedRoleScheduleRequestActionsSelfActivate:
            return @"selfActivate";
        case MSGraphUnifiedRoleScheduleRequestActionsSelfDeactivate:
            return @"selfDeactivate";
        case MSGraphUnifiedRoleScheduleRequestActionsAdminExtend:
            return @"adminExtend";
        case MSGraphUnifiedRoleScheduleRequestActionsAdminRenew:
            return @"adminRenew";
        case MSGraphUnifiedRoleScheduleRequestActionsSelfExtend:
            return @"selfExtend";
        case MSGraphUnifiedRoleScheduleRequestActionsSelfRenew:
            return @"selfRenew";
        case MSGraphUnifiedRoleScheduleRequestActionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphUnifiedRoleScheduleRequestActionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphUnifiedRoleScheduleRequestActionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphUnifiedRoleScheduleRequestActions)

- (MSGraphUnifiedRoleScheduleRequestActions*) toMSGraphUnifiedRoleScheduleRequestActions{

    if([self isEqualToString:@"adminAssign"])
    {
          return [MSGraphUnifiedRoleScheduleRequestActions adminAssign];
    }
    else if([self isEqualToString:@"adminUpdate"])
    {
          return [MSGraphUnifiedRoleScheduleRequestActions adminUpdate];
    }
    else if([self isEqualToString:@"adminRemove"])
    {
          return [MSGraphUnifiedRoleScheduleRequestActions adminRemove];
    }
    else if([self isEqualToString:@"selfActivate"])
    {
          return [MSGraphUnifiedRoleScheduleRequestActions selfActivate];
    }
    else if([self isEqualToString:@"selfDeactivate"])
    {
          return [MSGraphUnifiedRoleScheduleRequestActions selfDeactivate];
    }
    else if([self isEqualToString:@"adminExtend"])
    {
          return [MSGraphUnifiedRoleScheduleRequestActions adminExtend];
    }
    else if([self isEqualToString:@"adminRenew"])
    {
          return [MSGraphUnifiedRoleScheduleRequestActions adminRenew];
    }
    else if([self isEqualToString:@"selfExtend"])
    {
          return [MSGraphUnifiedRoleScheduleRequestActions selfExtend];
    }
    else if([self isEqualToString:@"selfRenew"])
    {
          return [MSGraphUnifiedRoleScheduleRequestActions selfRenew];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphUnifiedRoleScheduleRequestActions unknownFutureValue];
    }
    else {
        return [MSGraphUnifiedRoleScheduleRequestActions UnknownEnumValue];
    }
}

@end
