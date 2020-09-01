// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookOperationError()
{
    NSString* _code;
    MSGraphWorkbookOperationError* _innerError;
    NSString* _message;
}
@end

@implementation MSGraphWorkbookOperationError

- (NSString*) code
{
    if([[NSNull null] isEqual:self.dictionary[@"code"]])
    {
        return nil;
    }   
    return self.dictionary[@"code"];
}

- (void) setCode: (NSString*) val
{
    self.dictionary[@"code"] = val;
}

- (MSGraphWorkbookOperationError*) innerError
{
    if(!_innerError){
        _innerError = [[MSGraphWorkbookOperationError alloc] initWithDictionary: self.dictionary[@"innerError"]];
    }
    return _innerError;
}

- (void) setInnerError: (MSGraphWorkbookOperationError*) val
{
    _innerError = val;
    self.dictionary[@"innerError"] = val;
}

- (NSString*) message
{
    if([[NSNull null] isEqual:self.dictionary[@"message"]])
    {
        return nil;
    }   
    return self.dictionary[@"message"];
}

- (void) setMessage: (NSString*) val
{
    self.dictionary[@"message"] = val;
}

@end
