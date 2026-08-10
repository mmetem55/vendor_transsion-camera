.class Lcom/transsion/camera/feature/burstpmk/BurstPMKRestriction;
.super Ljava/lang/Object;
.source "BurstPMKRestriction.java"


# static fields
.field private static final KEY_AIS:Ljava/lang/String; = "key_ais"

.field private static final KEY_AUTO_WATERMARK:Ljava/lang/String; = "key_auto_watermark"

.field private static final KEY_CAMERA_ZOOM:Ljava/lang/String; = "key_camera_zoom"

.field private static final KEY_COLOR_EFFECT:Ljava/lang/String; = "key_color_effect"

.field private static final KEY_CSHOT:Ljava/lang/String; = "key_continuous_shot"

.field private static final KEY_DNG:Ljava/lang/String; = "key_dng"

.field private static final KEY_FACE_DETECTION:Ljava/lang/String; = "key_face_detection"

.field private static final KEY_FLASH:Ljava/lang/String; = "key_flash"

.field private static final KEY_FLASH_FACADE:Ljava/lang/String; = "key_flash_facade"

.field private static final KEY_GUIDELINE:Ljava/lang/String; = "key_guidelines"

.field private static final KEY_HDR:Ljava/lang/String; = "key_hdr"

.field private static final KEY_ISO:Ljava/lang/String; = "key_iso"

.field private static final KEY_LEVEL:Ljava/lang/String; = "key_level"

.field private static final KEY_METERING:Ljava/lang/String; = "key_metering"

.field private static final KEY_MIRROR:Ljava/lang/String; = "key_mirror"

.field private static final KEY_PANORAMA:Ljava/lang/String;

.field private static final KEY_SCENE_MODE:Ljava/lang/String; = "key_scene_mode"

.field private static final KEY_SELF_TIMER:Ljava/lang/String; = "key_self_timer"

.field private static final KEY_SHUTTER_SPEED:Ljava/lang/String; = "key_exposure_time"

.field private static final KEY_TOUCHCAPTURE:Ljava/lang/String; = "key_touch_capture"

.field private static final KEY_WHITE_BALANCE:Ljava/lang/String; = "key_white_balance"

.field private static final KEY_ZSL:Ljava/lang/String; = "key_zsl"

.field private static final VALUE_AUTO:Ljava/lang/String; = "auto"

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    const-class v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKRestriction;->KEY_PANORAMA:Ljava/lang/String;

    .line 58
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 61
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v2, "key_continuous_shot,key_flash,key_flash_facade,key_face_detection,key_hdr,key_zsl,key_dng,key_self_timer,key_scene_mode,key_color_effect,key_ais,key_level,key_guidelines,key_touch_capture,key_auto_watermark,key_mirror,key_metering,key_exposure_time,key_iso,key_white_balance,key_camera_zoom,key_volume_key,key_eye_detection,key_auto_focus_switch,key_fold_column"

    .line 62
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 88
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "on"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_continuous_shot"

    const-string v3, "off"

    .line 90
    invoke-virtual {v2, v0, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_flash"

    .line 91
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_flash_facade"

    .line 92
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_face_detection"

    .line 93
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_hdr"

    .line 94
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_zsl"

    .line 95
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_dng"

    .line 96
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_self_timer"

    .line 97
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_scene_mode"

    .line 98
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_color_effect"

    const-string v4, "none"

    .line 99
    invoke-virtual {v0, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_ais"

    .line 100
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_level"

    .line 101
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_guidelines"

    .line 102
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_touch_capture"

    .line 103
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_auto_watermark"

    .line 104
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_mirror"

    .line 105
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_metering"

    const-string v4, "average"

    .line 106
    invoke-virtual {v0, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-wide/16 v4, -0x1

    .line 107
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_exposure_time"

    .line 107
    invoke-virtual {v0, v5, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "key_iso"

    .line 109
    invoke-virtual {v0, v5, v4, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_white_balance"

    const-string v4, "auto"

    .line 111
    invoke-virtual {v0, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_camera_zoom"

    const-string v4, "100"

    .line 112
    invoke-virtual {v0, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_volume_key"

    const-string v4, "Shutter"

    .line 113
    invoke-virtual {v0, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_eye_detection"

    .line 114
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_auto_focus_switch"

    .line 115
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_fold_column"

    .line 116
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 88
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

    .line 130
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKRestriction;->KEY_PANORAMA:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string v2, "val_pan"

    .line 131
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 126
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
