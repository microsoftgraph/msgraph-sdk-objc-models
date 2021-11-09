// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdiscoveryExportFileStructureValue){

	MSGraphEdiscoveryExportFileStructureNone = 0,
	MSGraphEdiscoveryExportFileStructureDirectory = 1,
	MSGraphEdiscoveryExportFileStructurePst = 2,
	MSGraphEdiscoveryExportFileStructureUnknownFutureValue = 3,
    MSGraphEdiscoveryExportFileStructureEndOfEnum
};

@interface MSGraphEdiscoveryExportFileStructure : NSObject

+(MSGraphEdiscoveryExportFileStructure*) none;
+(MSGraphEdiscoveryExportFileStructure*) directory;
+(MSGraphEdiscoveryExportFileStructure*) pst;
+(MSGraphEdiscoveryExportFileStructure*) unknownFutureValue;

+(MSGraphEdiscoveryExportFileStructure*) UnknownEnumValue;

+(MSGraphEdiscoveryExportFileStructure*) exportFileStructureWithEnumValue:(MSGraphEdiscoveryExportFileStructureValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdiscoveryExportFileStructureValue enumValue;

@end


@interface NSString (MSGraphEdiscoveryExportFileStructure)

- (MSGraphEdiscoveryExportFileStructure*) toMSGraphEdiscoveryExportFileStructure;

@end
