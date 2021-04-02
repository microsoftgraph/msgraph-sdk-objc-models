// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphProvisioningAction.h"

@interface MSGraphProvisioningAction () {
    MSGraphProvisioningActionValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphProvisioningActionValue enumValue;
@end

@implementation MSGraphProvisioningAction

+ (MSGraphProvisioningAction*) other {
    static MSGraphProvisioningAction *_other;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _other = [[MSGraphProvisioningAction alloc] init];
        _other.enumValue = MSGraphProvisioningActionOther;
    });
    return _other;
}
+ (MSGraphProvisioningAction*) create {
    static MSGraphProvisioningAction *_create;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _create = [[MSGraphProvisioningAction alloc] init];
        _create.enumValue = MSGraphProvisioningActionCreate;
    });
    return _create;
}
+ (MSGraphProvisioningAction*) delete {
    static MSGraphProvisioningAction *_delete;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _delete = [[MSGraphProvisioningAction alloc] init];
        _delete.enumValue = MSGraphProvisioningActionDelete;
    });
    return _delete;
}
+ (MSGraphProvisioningAction*) disable {
    static MSGraphProvisioningAction *_disable;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disable = [[MSGraphProvisioningAction alloc] init];
        _disable.enumValue = MSGraphProvisioningActionDisable;
    });
    return _disable;
}
+ (MSGraphProvisioningAction*) update {
    static MSGraphProvisioningAction *_update;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _update = [[MSGraphProvisioningAction alloc] init];
        _update.enumValue = MSGraphProvisioningActionUpdate;
    });
    return _update;
}
+ (MSGraphProvisioningAction*) stagedDelete {
    static MSGraphProvisioningAction *_stagedDelete;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stagedDelete = [[MSGraphProvisioningAction alloc] init];
        _stagedDelete.enumValue = MSGraphProvisioningActionStagedDelete;
    });
    return _stagedDelete;
}
+ (MSGraphProvisioningAction*) unknownFutureValue {
    static MSGraphProvisioningAction *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphProvisioningAction alloc] init];
        _unknownFutureValue.enumValue = MSGraphProvisioningActionUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphProvisioningAction*) UnknownEnumValue {
    static MSGraphProvisioningAction *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphProvisioningAction alloc] init];
        _unknownValue.enumValue = MSGraphProvisioningActionEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphProvisioningAction*) provisioningActionWithEnumValue:(MSGraphProvisioningActionValue)val {

    switch(val)
    {
        case MSGraphProvisioningActionOther:
            return [MSGraphProvisioningAction other];
        case MSGraphProvisioningActionCreate:
            return [MSGraphProvisioningAction create];
        case MSGraphProvisioningActionDelete:
            return [MSGraphProvisioningAction delete];
        case MSGraphProvisioningActionDisable:
            return [MSGraphProvisioningAction disable];
        case MSGraphProvisioningActionUpdate:
            return [MSGraphProvisioningAction update];
        case MSGraphProvisioningActionStagedDelete:
            return [MSGraphProvisioningAction stagedDelete];
        case MSGraphProvisioningActionUnknownFutureValue:
            return [MSGraphProvisioningAction unknownFutureValue];
        case MSGraphProvisioningActionEndOfEnum:
        default:
            return [MSGraphProvisioningAction UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphProvisioningActionOther:
            return @"other";
        case MSGraphProvisioningActionCreate:
            return @"create";
        case MSGraphProvisioningActionDelete:
            return @"delete";
        case MSGraphProvisioningActionDisable:
            return @"disable";
        case MSGraphProvisioningActionUpdate:
            return @"update";
        case MSGraphProvisioningActionStagedDelete:
            return @"stagedDelete";
        case MSGraphProvisioningActionUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphProvisioningActionEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphProvisioningActionValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphProvisioningAction)

- (MSGraphProvisioningAction*) toMSGraphProvisioningAction{

    if([self isEqualToString:@"other"])
    {
          return [MSGraphProvisioningAction other];
    }
    else if([self isEqualToString:@"create"])
    {
          return [MSGraphProvisioningAction create];
    }
    else if([self isEqualToString:@"delete"])
    {
          return [MSGraphProvisioningAction delete];
    }
    else if([self isEqualToString:@"disable"])
    {
          return [MSGraphProvisioningAction disable];
    }
    else if([self isEqualToString:@"update"])
    {
          return [MSGraphProvisioningAction update];
    }
    else if([self isEqualToString:@"stagedDelete"])
    {
          return [MSGraphProvisioningAction stagedDelete];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphProvisioningAction unknownFutureValue];
    }
    else {
        return [MSGraphProvisioningAction UnknownEnumValue];
    }
}

@end
