// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAuthenticationMethodConfiguration()
{
    MSGraphAuthenticationMethodState* _state;
}
@end

@implementation MSGraphAuthenticationMethodConfiguration

- (MSGraphAuthenticationMethodState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphAuthenticationMethodState];
    }
    return _state;
}

- (void) setState: (MSGraphAuthenticationMethodState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}


@end
