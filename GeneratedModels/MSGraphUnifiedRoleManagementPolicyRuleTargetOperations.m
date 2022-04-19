// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphUnifiedRoleManagementPolicyRuleTargetOperations.h"

@interface MSGraphUnifiedRoleManagementPolicyRuleTargetOperations () {
    MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsValue enumValue;
@end

@implementation MSGraphUnifiedRoleManagementPolicyRuleTargetOperations

+ (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) all {
    static MSGraphUnifiedRoleManagementPolicyRuleTargetOperations *_all;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _all = [[MSGraphUnifiedRoleManagementPolicyRuleTargetOperations alloc] init];
        _all.enumValue = MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsAll;
    });
    return _all;
}
+ (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) activate {
    static MSGraphUnifiedRoleManagementPolicyRuleTargetOperations *_activate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _activate = [[MSGraphUnifiedRoleManagementPolicyRuleTargetOperations alloc] init];
        _activate.enumValue = MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsActivate;
    });
    return _activate;
}
+ (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) deactivate {
    static MSGraphUnifiedRoleManagementPolicyRuleTargetOperations *_deactivate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deactivate = [[MSGraphUnifiedRoleManagementPolicyRuleTargetOperations alloc] init];
        _deactivate.enumValue = MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsDeactivate;
    });
    return _deactivate;
}
+ (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) assign {
    static MSGraphUnifiedRoleManagementPolicyRuleTargetOperations *_assign;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _assign = [[MSGraphUnifiedRoleManagementPolicyRuleTargetOperations alloc] init];
        _assign.enumValue = MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsAssign;
    });
    return _assign;
}
+ (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) update {
    static MSGraphUnifiedRoleManagementPolicyRuleTargetOperations *_update;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _update = [[MSGraphUnifiedRoleManagementPolicyRuleTargetOperations alloc] init];
        _update.enumValue = MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsUpdate;
    });
    return _update;
}
+ (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) remove {
    static MSGraphUnifiedRoleManagementPolicyRuleTargetOperations *_remove;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _remove = [[MSGraphUnifiedRoleManagementPolicyRuleTargetOperations alloc] init];
        _remove.enumValue = MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsRemove;
    });
    return _remove;
}
+ (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) extend {
    static MSGraphUnifiedRoleManagementPolicyRuleTargetOperations *_extend;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _extend = [[MSGraphUnifiedRoleManagementPolicyRuleTargetOperations alloc] init];
        _extend.enumValue = MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsExtend;
    });
    return _extend;
}
+ (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) renew {
    static MSGraphUnifiedRoleManagementPolicyRuleTargetOperations *_renew;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _renew = [[MSGraphUnifiedRoleManagementPolicyRuleTargetOperations alloc] init];
        _renew.enumValue = MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsRenew;
    });
    return _renew;
}
+ (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) unknownFutureValue {
    static MSGraphUnifiedRoleManagementPolicyRuleTargetOperations *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphUnifiedRoleManagementPolicyRuleTargetOperations alloc] init];
        _unknownFutureValue.enumValue = MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) UnknownEnumValue {
    static MSGraphUnifiedRoleManagementPolicyRuleTargetOperations *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphUnifiedRoleManagementPolicyRuleTargetOperations alloc] init];
        _unknownValue.enumValue = MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) unifiedRoleManagementPolicyRuleTargetOperationsWithEnumValue:(MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsValue)val {

    switch(val)
    {
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsAll:
            return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations all];
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsActivate:
            return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations activate];
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsDeactivate:
            return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations deactivate];
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsAssign:
            return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations assign];
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsUpdate:
            return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations update];
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsRemove:
            return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations remove];
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsExtend:
            return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations extend];
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsRenew:
            return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations renew];
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsUnknownFutureValue:
            return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations unknownFutureValue];
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsEndOfEnum:
        default:
            return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsAll:
            return @"all";
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsActivate:
            return @"activate";
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsDeactivate:
            return @"deactivate";
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsAssign:
            return @"assign";
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsUpdate:
            return @"update";
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsRemove:
            return @"remove";
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsExtend:
            return @"extend";
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsRenew:
            return @"renew";
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations)

- (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) toMSGraphUnifiedRoleManagementPolicyRuleTargetOperations{

    if([self isEqualToString:@"all"])
    {
          return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations all];
    }
    else if([self isEqualToString:@"activate"])
    {
          return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations activate];
    }
    else if([self isEqualToString:@"deactivate"])
    {
          return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations deactivate];
    }
    else if([self isEqualToString:@"assign"])
    {
          return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations assign];
    }
    else if([self isEqualToString:@"update"])
    {
          return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations update];
    }
    else if([self isEqualToString:@"remove"])
    {
          return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations remove];
    }
    else if([self isEqualToString:@"extend"])
    {
          return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations extend];
    }
    else if([self isEqualToString:@"renew"])
    {
          return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations renew];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations unknownFutureValue];
    }
    else {
        return [MSGraphUnifiedRoleManagementPolicyRuleTargetOperations UnknownEnumValue];
    }
}

@end
