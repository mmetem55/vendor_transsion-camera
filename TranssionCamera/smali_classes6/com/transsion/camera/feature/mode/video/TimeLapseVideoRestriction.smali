.class public Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;
.super Ljava/lang/Object;
.source "TimeLapseVideoRestriction.java"


# static fields
.field private static final KEY_MODE:Ljava/lang/String;

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"

.field private static final sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    const-class v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    .line 18
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 19
    new-instance v2, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 23
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v3, "key_touch_capture,key_screen_flash,key_distortion_correction,key_location,key_face_detection,key_eye_detection,key_video_portrait,key_auto_focus_switch,key_fold_column"

    .line 24
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 33
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "on"

    invoke-direct {v3, v0, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "key_touch_capture"

    const-string v6, "off"

    .line 35
    invoke-virtual {v3, v5, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v5, "key_screen_flash"

    .line 36
    invoke-virtual {v3, v5, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v5, "key_location"

    .line 37
    invoke-virtual {v3, v5, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v5, "key_eye_detection"

    .line 38
    invoke-virtual {v3, v5, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v5, "key_face_detection"

    .line 39
    invoke-virtual {v3, v5, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v7, "key_auto_focus_switch"

    .line 42
    invoke-virtual {v3, v7, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v7, "key_fold_column"

    .line 43
    invoke-virtual {v3, v7, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 33
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 73
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 75
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v1, v0, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "off,on,gender_indentification"

    .line 76
    invoke-virtual {v1, v5, v6, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 75
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 78
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v1, v0, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v5, v4, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 78
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 92
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string v2, "val_lapse"

    .line 93
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method static getFaceDetectRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 88
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
