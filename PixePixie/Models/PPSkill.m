#import "PPSkill.h"

@implementation PPSkill

@synthesize skillName;
@synthesize animateTextures;
@synthesize HPChangeValue;
@synthesize skillType;
@synthesize skillObject;
@synthesize skillstatus;

-(NSString *)getIconImageName
{
    return [NSString stringWithFormat:@"%02d_%@", self.skillId, kSkillName[self.skillId]];
}

+(PPSkill *)skillWithId:(int)skillID AndLevel:(int)skillLevel
{
    
    
    NSDictionary * pixiesInfo = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"PixiesInfo"
                                                                                                           ofType:@"plist"]];
    NSDictionary * skillInfo = [[pixiesInfo objectForKey:@"skills"] objectForKey:[NSNumber numberWithInt:skillID]];
    
    
    PPSkill * tSkill = [[PPSkill alloc] init];
    tSkill.skillId = skillID;
    
    tSkill.skillName = kSkillName[skillID];
    tSkill.skillLevel = skillLevel;
    tSkill.skillName = [skillInfo objectForKey:@"skillname"];
    tSkill.skillObject =[[skillInfo objectForKey:@"skillobject"] intValue];
    tSkill.skillType =[[skillInfo objectForKey:@"skilltype"] intValue];
    tSkill.skillstatus = [[skillInfo objectForKey:@"skillstatus"] intValue];


    return tSkill;
}

@end
