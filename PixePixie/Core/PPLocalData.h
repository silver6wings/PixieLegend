
@class PPPixie;

@interface PPLocalData : NSObject

@property (nonatomic, retain) PPPixie * firstPixie;

+(PPLocalData *)getInstance;
+(NSString *)getUserInfoPath;

// JSON 数据转换
+(NSData *)directoryToJSONData:(NSDictionary *)dict;
+(NSDictionary *)JSONDataTodirectory:(NSData *)dict;

// UserDefault
+(id)contentFromUserDefaultKey:(NSString *)keyString;
+(void)setContent:(id)content forContentKey:(NSString *)keyString;

@end
