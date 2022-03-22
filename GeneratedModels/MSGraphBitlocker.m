// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBitlocker()
{
    NSArray* _recoveryKeys;
}
@end

@implementation MSGraphBitlocker

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.bitlocker";
    }
    return self;
}
- (NSArray*) recoveryKeys
{
    if(!_recoveryKeys){
        
    NSMutableArray *recoveryKeysResult = [NSMutableArray array];
    NSArray *recoveryKeys = self.dictionary[@"recoveryKeys"];

    if ([recoveryKeys isKindOfClass:[NSArray class]]){
        for (id tempBitlockerRecoveryKey in recoveryKeys){
            [recoveryKeysResult addObject:tempBitlockerRecoveryKey];
        }
    }

    _recoveryKeys = recoveryKeysResult;
        
    }
    return _recoveryKeys;
}

- (void) setRecoveryKeys: (NSArray*) val
{
    _recoveryKeys = val;
    self.dictionary[@"recoveryKeys"] = val;
}


@end
