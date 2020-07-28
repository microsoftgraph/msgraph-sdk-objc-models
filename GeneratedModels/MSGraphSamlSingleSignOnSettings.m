// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSamlSingleSignOnSettings()
{
    NSString* _relayState;
}
@end

@implementation MSGraphSamlSingleSignOnSettings

- (NSString*) relayState
{
    if([[NSNull null] isEqual:self.dictionary[@"relayState"]])
    {
        return nil;
    }   
    return self.dictionary[@"relayState"];
}

- (void) setRelayState: (NSString*) val
{
    self.dictionary[@"relayState"] = val;
}

@end
