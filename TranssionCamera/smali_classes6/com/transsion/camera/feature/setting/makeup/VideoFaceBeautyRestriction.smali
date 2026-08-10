.class final Lcom/transsion/camera/feature/setting/makeup/VideoFaceBeautyRestriction;
.super Ljava/lang/Object;
.source "VideoFaceBeautyRestriction.java"


# static fields
.field private static final KEY_ANTI_VIDEO:Ljava/lang/String; = "key_anti_video"

.field private static final KEY_VIDEO_PORTRAIT:Ljava/lang/String; = "key_video_portrait"

.field private static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "key_video_quality"

.field private static final VALUE_FACEBEAUTY_OFF:Ljava/lang/String; = "video_facebeauty_off"

.field private static final VALUE_FACEBEAUTY_ON:Ljava/lang/String; = "video_facebeauty_on"

.field private static mVideoFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/VideoFaceBeautyRestriction;->mVideoFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_video_facebeauty"

    .line 50
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/VideoFaceBeautyRestriction;->mVideoFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_anti_video,key_video_portrait,key_video_quality,key_tran_plugin"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/VideoFaceBeautyRestriction;->mVideoFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "video_facebeauty_on"

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_anti_video"

    const-string v3, "off"

    const-string v4, "off,on"

    .line 54
    invoke-virtual {v2, v1, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_video_portrait"

    .line 55
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const/4 v2, 0x5

    .line 56
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_video_quality"

    const-string v4, "null"

    invoke-virtual {v1, v3, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMultiFaceBeautyRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 62
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/VideoFaceBeautyRestriction;->mVideoFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
