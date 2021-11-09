// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCompliance()
{
    MSGraphEdiscoveryEdiscoveryroot* _ediscovery;
}
@end

@implementation MSGraphCompliance

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.compliance";
    }
    return self;
}
- (NSString*) oDataType
{
    return self.dictionary[@"@odata.type"];
}
- (void) setODataType: (NSString*) val
{
    self.dictionary[@"@odata.type"] = val;
}
- (NSString*) oDataEtag
{
    return self.dictionary[@"@odata.etag"];
}
- (void) setODataEtag: (NSString*) val
{
    self.dictionary[@"@odata.etag"] = val;
}
- (MSGraphEdiscoveryEdiscoveryroot*) ediscovery
{
    if(!_ediscovery){
        _ediscovery = [[MSGraphEdiscoveryEdiscoveryroot alloc] initWithDictionary: self.dictionary[@"ediscovery"]];
    }
    return _ediscovery;
}

- (void) setEdiscovery: (MSGraphEdiscoveryEdiscoveryroot*) val
{
    _ediscovery = val;
    self.dictionary[@"ediscovery"] = val;
}


@end
