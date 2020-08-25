// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPersistentBrowserSessionControl()
{
    MSGraphPersistentBrowserSessionMode* _mode;
}
@end

@implementation MSGraphPersistentBrowserSessionControl

- (MSGraphPersistentBrowserSessionMode*) mode
{
    if(!_mode){
        _mode = [self.dictionary[@"mode"] toMSGraphPersistentBrowserSessionMode];
    }
    return _mode;
}

- (void) setMode: (MSGraphPersistentBrowserSessionMode*) val
{
    _mode = val;
    self.dictionary[@"mode"] = val;
}

@end
