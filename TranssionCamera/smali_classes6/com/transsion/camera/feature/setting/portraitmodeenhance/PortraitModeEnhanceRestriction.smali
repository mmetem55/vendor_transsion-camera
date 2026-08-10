.class public Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceRestriction;
.super Ljava/lang/Object;
.source "PortraitModeEnhanceRestriction.java"


# static fields
.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_portraitmode_enhance"

    .line 15
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
