// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChangeNotificationCollection()
{
    NSArray* _validationTokens;
    NSArray* _value;
}
@end

@implementation MSGraphChangeNotificationCollection

- (NSArray*) validationTokens
{
    if([[NSNull null] isEqual:self.dictionary[@"validationTokens"]])
    {
        return nil;
    }   
    return self.dictionary[@"validationTokens"];
}

- (void) setValidationTokens: (NSArray*) val
{
    self.dictionary[@"validationTokens"] = val;
}

- (NSArray*) value
{
    if(!_value){
        
    NSMutableArray *valueResult = [NSMutableArray array];
    NSArray *value = self.dictionary[@"value"];

    if ([value isKindOfClass:[NSArray class]]){
        for (id tempChangeNotification in value){
            [valueResult addObject:tempChangeNotification];
        }
    }

    _value = valueResult;
        
    }
    return _value;
}

- (void) setValue: (NSArray*) val
{
    _value = val;
    self.dictionary[@"value"] = val;
}

@end
