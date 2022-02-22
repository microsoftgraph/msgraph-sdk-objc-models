// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessFilter()
{
    MSGraphFilterMode* _mode;
    NSString* _rule;
}
@end

@implementation MSGraphConditionalAccessFilter

- (MSGraphFilterMode*) mode
{
    if(!_mode){
        _mode = [self.dictionary[@"mode"] toMSGraphFilterMode];
    }
    return _mode;
}

- (void) setMode: (MSGraphFilterMode*) val
{
    _mode = val;
    self.dictionary[@"mode"] = val;
}

- (NSString*) rule
{
    return self.dictionary[@"rule"];
}

- (void) setRule: (NSString*) val
{
    self.dictionary[@"rule"] = val;
}

@end
