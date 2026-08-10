.class final Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpRestriction;
.super Ljava/lang/Object;
.source "VideoMakeUpRestriction.java"


# static fields
.field private static final sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 46
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_video_makeup"

    .line 49
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v2, "key_anti_video,key_video_portrait,key_video_facebeauty,key_night_hawk,key_com_video_hdr,key_transsion_filter,key_video_super_night_yuv,key_video_enhance_yuv,key_video_filter,key_video_effect,key_video_frame,key_video_super_night,key_video_enhance"

    .line 51
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 66
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "on"

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_anti_video"

    const-string v5, "off"

    const-string v6, "off,on"

    .line 68
    invoke-virtual {v2, v4, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v4, "key_video_portrait"

    .line 69
    invoke-virtual {v2, v4, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v4, "key_video_facebeauty"

    const-string v7, "video_facebeauty_off"

    const-string v8, "video_facebeauty_off,video_facebeauty_on"

    .line 70
    invoke-virtual {v2, v4, v7, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v4, "key_night_hawk"

    .line 71
    invoke-virtual {v2, v4, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v7, "key_com_video_hdr"

    .line 72
    invoke-virtual {v2, v7, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v7, "key_transsion_filter"

    const-string v8, "default"

    const/4 v9, 0x0

    .line 73
    invoke-virtual {v2, v7, v8, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v7, "key_video_filter"

    const-string v8, "filter_default"

    .line 74
    invoke-virtual {v2, v7, v8, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v7, "key_video_effect"

    const-string v8, "effect_default"

    .line 75
    invoke-virtual {v2, v7, v8, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v7, "key_video_frame"

    const-string v8, "frame_default"

    .line 76
    invoke-virtual {v2, v7, v8, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v7, "key_video_super_night"

    .line 77
    invoke-virtual {v2, v7, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v7, "key_video_enhance"

    .line 78
    invoke-virtual {v2, v7, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v7, "key_video_super_night_yuv"

    .line 79
    invoke-virtual {v2, v7, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v7, "key_video_enhance_yuv"

    .line 80
    invoke-virtual {v2, v7, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 82
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v1, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2, v4, v3, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 89
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
