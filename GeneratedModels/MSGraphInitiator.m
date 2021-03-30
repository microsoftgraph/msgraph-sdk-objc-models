// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphInitiator()
{
    MSGraphInitiatorType* _initiatorType;
}
@end

@implementation MSGraphInitiator

- (MSGraphInitiatorType*) initiatorType
{
    if(!_initiatorType){
        _initiatorType = [self.dictionary[@"initiatorType"] toMSGraphInitiatorType];
    }
    return _initiatorType;
}

- (void) setInitiatorType: (MSGraphInitiatorType*) val
{
    _initiatorType = val;
    self.dictionary[@"initiatorType"] = val;
}

@end
