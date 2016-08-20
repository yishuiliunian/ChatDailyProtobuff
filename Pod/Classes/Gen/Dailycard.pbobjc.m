// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: dailycard.proto

#import "GPBProtocolBuffers_RuntimeSupport.h"
#import "Dailycard.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - DailycardRoot

@implementation DailycardRoot

@end

#pragma mark - DailycardRoot_FileDescriptor

static GPBFileDescriptor *DailycardRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"rpc"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum CDCardInfoType

GPBEnumDescriptor *CDCardInfoType_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "CardInfoText\000CardInfoImage\000CardInfoLocat"
        "ion\000CardInfoWhether\000";
    static const int32_t values[] = {
        CDCardInfoType_CardInfoText,
        CDCardInfoType_CardInfoImage,
        CDCardInfoType_CardInfoLocation,
        CDCardInfoType_CardInfoWhether,
    };
    static const char *extraTextFormatInfo = "\004\000\014\000\001\r\000\002\020\000\003\017\000";
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(CDCardInfoType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:CDCardInfoType_IsValidValue
                              extraTextFormatInfo:extraTextFormatInfo];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL CDCardInfoType_IsValidValue(int32_t value__) {
  switch (value__) {
    case CDCardInfoType_CardInfoText:
    case CDCardInfoType_CardInfoImage:
    case CDCardInfoType_CardInfoLocation:
    case CDCardInfoType_CardInfoWhether:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - CDCardImage

@implementation CDCardImage

@dynamic filePath;
@dynamic URL;
@dynamic width;
@dynamic height;

typedef struct CDCardImage__storage_ {
  uint32_t _has_storage_[1];
  int32_t width;
  int32_t height;
  NSString *filePath;
  NSString *URL;
} CDCardImage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "filePath",
        .dataTypeSpecific.className = NULL,
        .number = CDCardImage_FieldNumber_FilePath,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(CDCardImage__storage_, filePath),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "URL",
        .dataTypeSpecific.className = NULL,
        .number = CDCardImage_FieldNumber_URL,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(CDCardImage__storage_, URL),
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "width",
        .dataTypeSpecific.className = NULL,
        .number = CDCardImage_FieldNumber_Width,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(CDCardImage__storage_, width),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "height",
        .dataTypeSpecific.className = NULL,
        .number = CDCardImage_FieldNumber_Height,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(CDCardImage__storage_, height),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[CDCardImage class]
                                     rootClass:[DailycardRoot class]
                                          file:DailycardRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(CDCardImage__storage_)
                                         flags:0];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\002!!!\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - CDCardText

@implementation CDCardText

@dynamic text;

typedef struct CDCardText__storage_ {
  uint32_t _has_storage_[1];
  NSString *text;
} CDCardText__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "text",
        .dataTypeSpecific.className = NULL,
        .number = CDCardText_FieldNumber_Text,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(CDCardText__storage_, text),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[CDCardText class]
                                     rootClass:[DailycardRoot class]
                                          file:DailycardRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(CDCardText__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - CDCardInfoItem

@implementation CDCardInfoItem

@dynamic type;
@dynamic content;

typedef struct CDCardInfoItem__storage_ {
  uint32_t _has_storage_[1];
  CDCardInfoType type;
  NSData *content;
} CDCardInfoItem__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "type",
        .dataTypeSpecific.enumDescFunc = CDCardInfoType_EnumDescriptor,
        .number = CDCardInfoItem_FieldNumber_Type,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(CDCardInfoItem__storage_, type),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "content",
        .dataTypeSpecific.className = NULL,
        .number = CDCardInfoItem_FieldNumber_Content,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(CDCardInfoItem__storage_, content),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[CDCardInfoItem class]
                                     rootClass:[DailycardRoot class]
                                          file:DailycardRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(CDCardInfoItem__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t CDCardInfoItem_Type_RawValue(CDCardInfoItem *message) {
  GPBDescriptor *descriptor = [CDCardInfoItem descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:CDCardInfoItem_FieldNumber_Type];
  return GPBGetMessageInt32Field(message, field);
}

void SetCDCardInfoItem_Type_RawValue(CDCardInfoItem *message, int32_t value) {
  GPBDescriptor *descriptor = [CDCardInfoItem descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:CDCardInfoItem_FieldNumber_Type];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - CDCardInfo

@implementation CDCardInfo

@dynamic contentsArray, contentsArray_Count;

typedef struct CDCardInfo__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *contentsArray;
} CDCardInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "contentsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(CDCardInfoItem),
        .number = CDCardInfo_FieldNumber_ContentsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(CDCardInfo__storage_, contentsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[CDCardInfo class]
                                     rootClass:[DailycardRoot class]
                                          file:DailycardRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(CDCardInfo__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
