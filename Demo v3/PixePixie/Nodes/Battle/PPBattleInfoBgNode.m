

#import "PPBattleInfoBgNode.h"

@implementation PPBattleInfoBgNode

-(instancetype)init
{
    if (self = [super init])
    {

//        SKSpriteNode *farBg0 = [SKSpriteNode spriteNodeWithImageNamed:@""];
//        farBg0.anchorPoint = CGPointMake(0, 0);
//        farBg0.zPosition = 9;
//        farBg0.position = CGPointMake(0, 150);
//        
//        SKSpriteNode *farBg1 = [SKSpriteNode spriteNodeWithImageNamed:@""];
//        farBg1.anchorPoint = CGPointMake(0, 0);
//        farBg1.zPosition = 9;
//        farBg1.position = CGPointMake(0, farBg0.position.y);
//        
//        
//        SKSpriteNode *farBg2 = [SKSpriteNode spriteNodeWithImageNamed:@""];
//        farBg2.anchorPoint = CGPointMake(0, 0);
//        farBg2.zPosition = 9;
//        farBg2.position = CGPointMake(0, 150);
//        
//        [self addChild:farBg0];
//        [self addChild:farBg1];
//        [self addChild:farBg2];
//        
//        [arryFarBg addObject:farBg0];
//        [arryFarBg addObject:farBg1];
//        [arryFarBg addObject:farBg2];
        
        for (int i = 0; i < 3; i++)
        {
            SKSpriteNode *farBg0 = [SKSpriteNode spriteNodeWithImageNamed:@"fight_back"];
            farBg0.anchorPoint = CGPointMake(0.5, 0.5);
            farBg0.size = CGSizeMake(320.0f, 160.0f);
            farBg0.position = CGPointMake(farBg0.frame.size.width*i, 0.0);
            
            [self addChild:farBg0];
            arryFarBg[i] = farBg0;
        }
        
        for (int i = 0; i < 2; i++)
        {
            SKSpriteNode *nearBg0 = [SKSpriteNode spriteNodeWithImageNamed:@"fight_back"];
            nearBg0.anchorPoint = CGPointMake(0.5, 0.5);
            [nearBg0 setColor:[UIColor redColor]];
            nearBg0.size = CGSizeMake(320.0f, 160.0f);

            nearBg0.position = CGPointMake(nearBg0.frame.size.width*i, 0.0);
            [self addChild:nearBg0];
            arryNearBg[i] = nearBg0;
        }
    }
    
    return self;
}

-(void)backgroundMove:(CGFloat)speed
{
    for (int i = 0; i < 2; i++)
    {
        arryNearBg[i].position = CGPointMake(arryNearBg[i].position.x-speed, arryNearBg[i].position.y);
    }
    
    if (arryNearBg[0].position.x + arryNearBg[0].frame.size.width < speed )
    {
        arryNearBg[0].position = CGPointMake(0, arryNearBg[0].position.y);
        arryNearBg[1].position = CGPointMake(arryNearBg[0].frame.size.width, arryNearBg[1].position.y);
    }
    
    for (int i = 0; i < 3; i++)
    {
        arryFarBg[i].position = CGPointMake(arryFarBg[i].frame.size.width-speed/4, arryFarBg[i].position.y);
    }
    
    if (arryFarBg[0].position.x + arryFarBg[0].frame.size.width < speed/4)
    {
        arryFarBg[0].position = CGPointMake(0.0, arryFarBg[0].position.y);
        arryFarBg[1].position = CGPointMake(arryFarBg[0].frame.size.width, arryFarBg[1].position.y);
        arryFarBg[2].position = CGPointMake(arryFarBg[0].frame.size.width * 2, arryFarBg[2].position.y);
    }
}

@end
