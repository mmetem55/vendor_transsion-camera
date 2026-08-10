.class Lcom/transsion/camera/feature/mode/video/VideoRestriction;
.super Ljava/lang/Object;
.source "VideoRestriction.java"


# static fields
.field static final KEY_PREVIEW:Ljava/lang/String; = "preview"

.field static final KEY_RECORDING:Ljava/lang/String; = "recording"

.field private static final KEY_SCREEN_FLASH:Ljava/lang/String; = "key_screen_flash"

.field static final KEY_STOP_RECORDING:Ljava/lang/String; = "stop-recording"

.field private static final KEY_TOUCH_CAPTURE:Ljava/lang/String; = "key_touch_capture"

.field public static final VALUE_LONG_FOCUS:Ljava/lang/String; = "long-focus"

.field public static final VALUE_MAIN:Ljava/lang/String; = "main"

.field public static final VALUE_PERISCOPE:Ljava/lang/String; = "periscope"

.field public static final VALUE_RESET:Ljava/lang/String; = "reset"

.field public static final VALUE_WIDE:Ljava/lang/String; = "wide"

.field private static final VIDEO_MODE_KEY:Ljava/lang/String;

.field private static sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRecordingRelationGroupForMode:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sSatRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 30
    const-class v0, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    .line 37
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 38
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 39
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sSatRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 48
    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 49
    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v3, "key_touch_capture,key_screen_flash,key_distortion_correction,key_location"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 50
    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "preview"

    invoke-direct {v3, v0, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_touch_capture"

    const-string v5, "off"

    .line 52
    invoke-virtual {v3, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v6, "key_screen_flash"

    .line 53
    invoke-virtual {v3, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v6, "key_location"

    .line 54
    invoke-virtual {v3, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 68
    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 69
    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 70
    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v6, "recording"

    invoke-direct {v3, v0, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 74
    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v6, "stop-recording"

    invoke-direct {v3, v0, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 81
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v2, "key_video_portrait,key_video_quality,key_flash,key_flash_facade,key_video_enhance_yuv,key_video_super_night_yuv,key_video_enhance,key_video_super_night"

    .line 82
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 85
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "long-focus"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_video_portrait"

    const/4 v4, 0x0

    const-string v6, "off,on"

    .line 87
    invoke-virtual {v2, v3, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v7, "key_video_enhance"

    .line 88
    invoke-virtual {v2, v7, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v8, "key_video_super_night"

    .line 89
    invoke-virtual {v2, v8, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v9, "key_video_enhance_yuv"

    .line 90
    invoke-virtual {v2, v9, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v10, "key_video_super_night_yuv"

    .line 91
    invoke-virtual {v2, v10, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 93
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v11, "periscope"

    invoke-direct {v2, v0, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2, v3, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v11, "key_flash"

    .line 96
    invoke-virtual {v2, v11, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v11, "key_flash_facade"

    .line 97
    invoke-virtual {v2, v11, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 98
    invoke-virtual {v2, v7, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v8, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v9, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 101
    invoke-virtual {v2, v10, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 103
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v11, "main"

    invoke-direct {v2, v0, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, v3, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 106
    invoke-virtual {v2, v7, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v8, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 108
    invoke-virtual {v2, v9, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v10, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 111
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "wide"

    invoke-direct {v2, v0, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2, v3, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v7, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 115
    invoke-virtual {v2, v8, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 116
    invoke-virtual {v2, v9, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v10, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 119
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "reset"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 139
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string v2, "val_video"

    .line 140
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method static getPreviewRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 125
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "preview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getQuickPreviewRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 157
    new-instance p0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_setting_quick_preview"

    const-string v1, "false"

    .line 158
    invoke-virtual {p0, v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method static getSatRelation(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 129
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->sSatRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_widecam_support_video_portrait"

    .line 130
    invoke-static {p0, v2, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "wide"

    .line 132
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "key_video_portrait"

    .line 133
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getVideoHDRRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    const-string v0, "key_com_video_hdr"

    if-eqz p0, :cond_0

    .line 146
    new-instance p0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0, v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 148
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0

    .line 150
    :cond_0
    new-instance p0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "off"

    .line 151
    invoke-virtual {p0, v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method
