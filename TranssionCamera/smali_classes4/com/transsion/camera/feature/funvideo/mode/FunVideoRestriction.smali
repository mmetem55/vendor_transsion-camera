.class Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;
.super Ljava/lang/Object;
.source "FunVideoRestriction.java"


# static fields
.field private static final FUNVIDEO_MODE_KEY:Ljava/lang/String;

.field static final KEY_FUNVIDEO_PREVIEW:Ljava/lang/String; = "preview"

.field private static final sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sMusicTemplateRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    const-class v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->FUNVIDEO_MODE_KEY:Ljava/lang/String;

    .line 23
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 24
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sMusicTemplateRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 25
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 28
    sget-object v2, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 29
    sget-object v2, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v3, "key_touch_capture,key_screen_flash,key_distortion_correction,key_location,key_shutter_sound,key_face_detection,key_eye_detection,key_auto_watermark, key_flash,key_flash_facade,key_auto_focus_switch,key_fold_column"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 35
    sget-object v2, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "preview"

    invoke-direct {v3, v0, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_touch_capture"

    const-string v5, "off"

    .line 37
    invoke-virtual {v3, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_screen_flash"

    .line 38
    invoke-virtual {v3, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_location"

    .line 39
    invoke-virtual {v3, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_face_detection"

    .line 40
    invoke-virtual {v3, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v6, "key_eye_detection"

    .line 41
    invoke-virtual {v3, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v6, "key_auto_watermark"

    .line 42
    invoke-virtual {v3, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v6, "key_flash"

    const-string v7, "off,torch"

    .line 43
    invoke-virtual {v3, v6, v5, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v6, "key_flash_facade"

    const-string v7, "off,torch,ringscreenlight"

    .line 45
    invoke-virtual {v3, v6, v5, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v6, "key_auto_focus_switch"

    .line 47
    invoke-virtual {v3, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v6, "key_fold_column"

    .line 48
    invoke-virtual {v3, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 62
    sget-object v2, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sMusicTemplateRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v3, "key_fun_video_music_template"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 63
    sget-object v2, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sMusicTemplateRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v6, "key_filter"

    invoke-virtual {v2, v6}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 64
    sget-object v2, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sMusicTemplateRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v7, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v7, v3, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "0"

    const-string v8, "0,-100"

    .line 65
    invoke-virtual {v7, v6, v3, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 74
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 76
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "on"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "off,on,gender_indentification"

    .line 77
    invoke-virtual {v2, v4, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 79
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2, v4, v3, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 89
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->FUNVIDEO_MODE_KEY:Ljava/lang/String;

    const-string v2, "preview"

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string v2, "val_fun"

    .line 90
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method static getFaceDetectRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 85
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getMusicTemplateRestriction()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 70
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sMusicTemplateRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method static getPreviewRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 53
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->sPreviewRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "preview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    const-string v1, "key_flash"

    const-string v2, "off,torch"

    .line 54
    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_flash_facade"

    const-string v2, "off,torch,ringscreenlight"

    .line 56
    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
