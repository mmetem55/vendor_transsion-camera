.class public Lcom/transsion/camera/feature/mode/magicsky/MagicSkyModeRestriction;
.super Ljava/lang/Object;
.source "MagicSkyModeRestriction.java"


# static fields
.field private static final MAGIC_SKY_MODE_KEY:Ljava/lang/String;

.field private static final sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    const-class v0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyModeRestriction;->MAGIC_SKY_MODE_KEY:Ljava/lang/String;

    .line 25
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 28
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v2, "key_eye_detection,key_face_detection,key_camera_zoom,key_volume_key,key_flash,key_flash_facade,key_auto_focus_switch"

    .line 29
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 37
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "on"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_eye_detection"

    const-string v3, "off"

    .line 39
    invoke-virtual {v2, v0, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_face_detection"

    .line 40
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_camera_zoom"

    const-string v4, "100"

    .line 41
    invoke-virtual {v0, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_volume_key"

    const-string v4, "Shutter"

    .line 42
    invoke-virtual {v0, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_flash"

    .line 43
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_flash_facade"

    .line 44
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_auto_focus_switch"

    .line 45
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 54
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyModeRestriction;->MAGIC_SKY_MODE_KEY:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string v2, "val_magic_sky"

    .line 55
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 50
    sget-object v0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
