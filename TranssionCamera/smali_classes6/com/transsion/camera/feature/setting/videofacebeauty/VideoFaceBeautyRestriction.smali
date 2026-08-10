.class public Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyRestriction;
.super Ljava/lang/Object;
.source "VideoFaceBeautyRestriction.java"


# static fields
.field private static final sVideFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyRestriction;->sVideFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_video_facebeauty"

    .line 40
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v2, "key_anti_video,key_video_portrait,key_night_hawk,key_com_video_hdr,key_transsion_filter,key_video_filter,key_video_effect,key_video_frame,key_video_super_night,key_video_enhance,key_video_super_night_yuv,key_video_enhance_yuv,key_video_makeup"

    .line 42
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 56
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "video_facebeauty_on"

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_anti_video"

    const-string v3, "off"

    const-string v4, "off,on"

    .line 58
    invoke-virtual {v2, v1, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_video_portrait"

    .line 59
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_night_hawk"

    const-string v5, "on"

    .line 60
    invoke-virtual {v1, v2, v5, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_com_video_hdr"

    .line 61
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_transsion_filter"

    const-string v5, "default"

    const/4 v6, 0x0

    .line 62
    invoke-virtual {v1, v2, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_video_filter"

    const-string v5, "filter_default"

    .line 63
    invoke-virtual {v1, v2, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_video_effect"

    const-string v5, "effect_default"

    .line 64
    invoke-virtual {v1, v2, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_video_frame"

    const-string v5, "frame_default"

    .line 65
    invoke-virtual {v1, v2, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_video_super_night"

    .line 66
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_video_enhance"

    .line 67
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_video_super_night_yuv"

    .line 68
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_video_enhance_yuv"

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_video_makeup"

    .line 70
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getVideoFaceBeautyRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 76
    sget-object v0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyRestriction;->sVideFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
