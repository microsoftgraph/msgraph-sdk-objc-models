// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWin32LobAppReturnCode()
{
    int32_t _returnCode;
    MSGraphWin32LobAppReturnCodeType* _type;
}
@end

@implementation MSGraphWin32LobAppReturnCode

- (int32_t) returnCode
{
    _returnCode = [self.dictionary[@"returnCode"] intValue];
    return _returnCode;
}

- (void) setReturnCode: (int32_t) val
{
    _returnCode = val;
    self.dictionary[@"returnCode"] = @(val);
}

- (MSGraphWin32LobAppReturnCodeType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphWin32LobAppReturnCodeType];
    }
    return _type;
}

- (void) setType: (MSGraphWin32LobAppReturnCodeType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

@end
