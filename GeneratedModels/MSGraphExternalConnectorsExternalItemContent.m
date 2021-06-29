// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExternalConnectorsExternalItemContent()
{
    MSGraphExternalConnectorsExternalItemContentType* _type;
    NSString* _value;
}
@end

@implementation MSGraphExternalConnectorsExternalItemContent

- (MSGraphExternalConnectorsExternalItemContentType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphExternalConnectorsExternalItemContentType];
    }
    return _type;
}

- (void) setType: (MSGraphExternalConnectorsExternalItemContentType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

- (NSString*) value
{
    if([[NSNull null] isEqual:self.dictionary[@"value"]])
    {
        return nil;
    }   
    return self.dictionary[@"value"];
}

- (void) setValue: (NSString*) val
{
    self.dictionary[@"value"] = val;
}

@end
