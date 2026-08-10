.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;
.super Ljava/lang/Object;
.source "DualVideoModeRestriction.java"


# static fields
.field private static final KEY_MODE:Ljava/lang/String;

.field private static final sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 16
    const-class v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->KEY_MODE:Ljava/lang/String;

    .line 18
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 19
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 23
    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 24
    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v3, "key_setting_quick_preview,key_self_timer,key_volume_key,key_touch_capture,key_screen_flash,key_distortion_correction,key_location,key_eye_detection,key_face_detection,key_auto_watermark, key_flash, key_flash_facade,key_video_quality,key_video_enhance,key_video_super_night,key_video_enhance_yuv,key_video_super_night_yuv,key_fold_column,key_cam_mode"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 33
    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "on"

    invoke-direct {v3, v0, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "key_setting_quick_preview"

    const-string v6, "false"

    .line 35
    invoke-virtual {v3, v5, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v5, "key_self_timer"

    const-string v6, "off"

    .line 36
    invoke-virtual {v3, v5, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v5, "key_volume_key"

    const-string v7, "Shutter"

    .line 37
    invoke-virtual {v3, v5, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v5, "key_touch_capture"

    .line 38
    invoke-virtual {v3, v5, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v5, "key_screen_flash"

    .line 39
    invoke-virtual {v3, v5, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v5, "key_location"

    .line 40
    invoke-virtual {v3, v5, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v5, "key_eye_detection"

    .line 41
    invoke-virtual {v3, v5, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v5, "key_face_detection"

    .line 42
    invoke-virtual {v3, v5, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_auto_watermark"

    .line 43
    invoke-virtual {v3, v4, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_flash"

    const-string v7, "off,torch"

    .line 44
    invoke-virtual {v3, v4, v6, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_flash_facade"

    const-string v7, "off,torch,ringscreenlight"

    .line 46
    invoke-virtual {v3, v4, v6, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_video_enhance"

    .line 48
    invoke-virtual {v3, v4, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_video_super_night"

    .line 49
    invoke-virtual {v3, v4, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_video_enhance_yuv"

    .line 50
    invoke-virtual {v3, v4, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_video_super_night_yuv"

    .line 51
    invoke-virtual {v3, v4, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_fold_column"

    .line 52
    invoke-virtual {v3, v4, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_cam_mode"

    const-string v7, "val_dual_video"

    .line 53
    invoke-virtual {v3, v4, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 83
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 85
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "off,on,gender_indentification"

    .line 86
    invoke-virtual {v2, v5, v6, v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFaceDetectRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 91
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getRelation(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 95
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    const-string v1, "key_flash"

    const-string v2, "off,torch"

    .line 96
    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_flash_facade"

    const-string v2, "off,torch,ringscreenlight"

    .line 98
    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    .line 101
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_video_quality"

    .line 100
    invoke-virtual {v0, v1, p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
