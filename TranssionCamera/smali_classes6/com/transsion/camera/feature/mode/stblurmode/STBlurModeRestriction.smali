.class Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;
.super Ljava/lang/Object;
.source "STBlurModeRestriction.java"


# static fields
.field private static final KEY_FLASH:Ljava/lang/String; = "key_flash"

.field private static final KEY_FLASH_FACADE:Ljava/lang/String; = "key_flash_facade"

.field private static final KEY_HDR:Ljava/lang/String; = "key_hdr"

.field private static final KEY_STBLUR_MODE:Ljava/lang/String;

.field private static final sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sRelationWithFlash:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    const-class v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->KEY_STBLUR_MODE:Ljava/lang/String;

    .line 23
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 24
    new-instance v2, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v2, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelationWithFlash:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 27
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v3, "key_hdr"

    .line 28
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    const-string v4, "key_flash"

    .line 29
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    const-string v5, "key_flash_facade"

    .line 30
    invoke-virtual {v1, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    const-string v6, "key_fold_column"

    .line 31
    invoke-virtual {v1, v6}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 32
    new-instance v7, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v8, "on"

    invoke-direct {v7, v0, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "off"

    .line 34
    invoke-virtual {v7, v3, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v7

    .line 35
    invoke-virtual {v7, v4, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v4

    .line 36
    invoke-virtual {v4, v5, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v4

    .line 37
    invoke-virtual {v4, v6, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v4

    .line 38
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v4

    .line 32
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 40
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v1, v0, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v3, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 42
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 58
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->KEY_STBLUR_MODE:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string v2, "val_stb_blur"

    .line 59
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 0

    if-eqz p0, :cond_0

    .line 54
    sget-object p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelationWithFlash:Lcom/transsion/camera/app/common/relation/RelationGroup;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    :goto_0
    return-object p0
.end method
