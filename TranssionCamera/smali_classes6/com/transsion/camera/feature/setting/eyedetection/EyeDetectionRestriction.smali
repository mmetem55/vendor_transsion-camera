.class public Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionRestriction;
.super Ljava/lang/Object;
.source "EyeDetectionRestriction.java"


# static fields
.field private static sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_eye_detection"

    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 17
    sget-object v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
