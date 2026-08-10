.class public Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicRestriction;
.super Ljava/lang/Object;
.source "AIRemosaicRestriction.java"


# static fields
.field static final VALUE_ON:Ljava/lang/String; = "on"

.field private static sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_ai_remosaic"

    .line 17
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_camera_zoom"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "on"

    invoke-direct {v3, v1, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "100"

    .line 20
    invoke-virtual {v3, v2, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicRestriction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicRestriction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method static getAIRemosaicRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 25
    sget-object v0, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
