// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallOptions()
{
    BOOL _hideBotAfterEscalation;
}
@end

@implementation MSGraphCallOptions

- (BOOL) hideBotAfterEscalation
{
    _hideBotAfterEscalation = [self.dictionary[@"hideBotAfterEscalation"] boolValue];
    return _hideBotAfterEscalation;
}

- (void) setHideBotAfterEscalation: (BOOL) val
{
    _hideBotAfterEscalation = val;
    self.dictionary[@"hideBotAfterEscalation"] = @(val);
}

@end
