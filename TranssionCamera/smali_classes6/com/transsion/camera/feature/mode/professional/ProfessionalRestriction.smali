.class public Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;
.super Ljava/lang/Object;
.source "ProfessionalRestriction.java"


# static fields
.field private static final KEY_MODE:Ljava/lang/String;

.field private static final KEY_SWITCH_DENOISE:Ljava/lang/String; = "SmartDenoise-Switch"

.field private static final sProParameterRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sSwitchRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 13
    const-class v0, Lcom/transsion/camera/feature/mode/professional/ProfessionalModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->KEY_MODE:Ljava/lang/String;

    .line 17
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 18
    new-instance v2, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v2, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->sProParameterRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 19
    new-instance v3, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v3, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->sSwitchRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 22
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v4, "key_hdr,key_setting_quick_preview,key_touch_capture,key_setting_professional_mode,key_asd"

    .line 23
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 26
    new-instance v4, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "on"

    invoke-direct {v4, v0, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_hdr"

    const-string v6, "off"

    .line 28
    invoke-virtual {v4, v0, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v4, "key_setting_quick_preview"

    const-string v7, "false"

    .line 29
    invoke-virtual {v0, v4, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v4, "key_touch_capture"

    .line 30
    invoke-virtual {v0, v4, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v4, "key_setting_professional_mode"

    const-string v7, "true"

    .line 31
    invoke-virtual {v0, v4, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v4, "key_asd"

    const-string v7, "0"

    .line 32
    invoke-virtual {v0, v4, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    const-string v0, "key_pro_parameter"

    .line 41
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v1, "key_flash,key_flash_facade"

    .line 42
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "mutual_off"

    invoke-direct {v1, v0, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_flash"

    .line 45
    invoke-virtual {v1, v4, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v7, "key_flash_facade"

    .line 46
    invoke-virtual {v1, v7, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 43
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 48
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v1, v0, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "off,auto,on,torch"

    .line 50
    invoke-virtual {v1, v4, v5, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v7, v5, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 48
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 55
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v1, v0, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "torch,auto,on,off"

    .line 57
    invoke-virtual {v1, v4, v6, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v7, v6, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 55
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 62
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v10, "auto"

    invoke-direct {v1, v0, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v4, v10, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v7, v10, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 62
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 69
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v10, "torch"

    invoke-direct {v1, v0, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v4, v10, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v7, v10, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 69
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    const-string v0, "SmartDenoise-Switch"

    .line 83
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v1, "key_setting_smart_denoise"

    .line 84
    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 85
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2, v1, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 85
    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 88
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v1, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 88
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 98
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string v2, "val_pro"

    .line 99
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getProParameterRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 79
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->sProParameterRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getSwitchRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 94
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->sSwitchRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method
