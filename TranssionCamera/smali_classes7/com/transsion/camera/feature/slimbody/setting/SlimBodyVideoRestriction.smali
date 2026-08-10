.class public Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoRestriction;
.super Ljava/lang/Object;
.source "SlimBodyVideoRestriction.java"


# static fields
.field private static final KEY_ANTI_VIDEO:Ljava/lang/String; = "key_anti_video"

.field private static final KEY_VIDEO_PORTRAIT:Ljava/lang/String; = "key_video_portrait"

.field private static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "key_video_quality"

.field private static final VALUE_FACEBEAUTY_ON:Ljava/lang/String; = "video_facebeauty_on"

.field private static mSlimBodySettingRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoRestriction;->mSlimBodySettingRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_video_facebeauty"

    .line 21
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoRestriction;->mSlimBodySettingRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_anti_video,key_video_portrait,key_video_quality,key_tran_plugin,key_com_video_hdr"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoRestriction;->mSlimBodySettingRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "video_facebeauty_on"

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_anti_video"

    const-string v3, "off"

    const-string v4, "off,on"

    .line 26
    invoke-virtual {v2, v1, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_video_portrait"

    .line 27
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_com_video_hdr"

    .line 28
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSlimBodySettingRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 34
    sget-object v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoRestriction;->mSlimBodySettingRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
