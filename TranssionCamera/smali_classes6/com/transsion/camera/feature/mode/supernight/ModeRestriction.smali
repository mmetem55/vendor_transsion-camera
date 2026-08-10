.class public Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;
.super Ljava/lang/Object;
.source "ModeRestriction.java"


# static fields
.field private static final FB_VALUE:Ljava/lang/String; = "supernight"

.field private static final KEY_MODE:Ljava/lang/String;

.field private static final KEY_NIGHT_SWITCH:Ljava/lang/String; = "SuperNight-Switch"

.field private static final KEY_STABLE_NIGHT_SWITCH:Ljava/lang/String; = "StableNight-Switch"

.field private static final SWITCH_OFF:Ljava/lang/String; = "off"

.field private static final SWITCH_ON:Ljava/lang/String; = "on"

.field static final VALUE_TORCH_NOT_SUPPORT:Ljava/lang/String; = "torch_not_support"

.field static final VALUE_TORCH_SUPPORT:Ljava/lang/String; = "torch_support"

.field private static sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 21
    const-class v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    .line 30
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 31
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 32
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 33
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 36
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_hdr,key_flash,key_flash_facade,key_exposure,key_setting_smart_denoise,key_asd"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "torch_not_support"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_hdr"

    const-string v5, "off"

    .line 41
    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v6, "key_flash"

    .line 42
    invoke-virtual {v2, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v7, "key_flash_facade"

    const-string v8, "off,ringscreenlight"

    .line 43
    invoke-virtual {v2, v7, v5, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    sget-object v9, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    const-string v10, "key_exposure"

    .line 45
    invoke-virtual {v2, v10, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v11, "key_setting_smart_denoise"

    const-string v12, "on"

    .line 46
    invoke-virtual {v2, v11, v12, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v13, "key_asd"

    const-string v14, "0"

    .line 47
    invoke-virtual {v2, v13, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 49
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v15, "torch_support"

    invoke-direct {v2, v0, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    move-object/from16 v16, v15

    const-string v15, "off,torch"

    .line 52
    invoke-virtual {v2, v6, v5, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    move-object/from16 v17, v15

    const-string v15, "off,torch,ringscreenlight"

    .line 54
    invoke-virtual {v2, v7, v5, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 56
    invoke-virtual {v2, v10, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v11, v12, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v13, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 61
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_hdr,key_flash,key_flash_facade,key_exposure,key_face_beauty,key_setting_smart_denoise,key_asd"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 64
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v7, v5, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 70
    invoke-virtual {v2, v10, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v3, "key_face_beauty"

    const-string v8, "supernight"

    .line 71
    invoke-virtual {v2, v3, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 72
    invoke-virtual {v2, v11, v12, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v13, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 75
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    invoke-direct {v2, v0, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v2, v17

    .line 78
    invoke-virtual {v1, v6, v5, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v7, v5, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v10, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v3, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v11, v12, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v13, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    move-object/from16 v2, v18

    .line 75
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 88
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 89
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_super_night,key_setting_smart_denoise,key_asd"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 91
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "SuperNight-Switch"

    invoke-direct {v3, v4, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "key_super_night"

    const-string v7, "Night"

    const/4 v8, 0x0

    .line 92
    invoke-virtual {v3, v6, v7, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 93
    invoke-virtual {v3, v11, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 94
    invoke-virtual {v3, v13, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 91
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 96
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v3, v4, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "None"

    .line 97
    invoke-virtual {v3, v6, v4, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v11, v12, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 99
    invoke-virtual {v3, v13, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 96
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 102
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v2, "StableNight-Switch"

    invoke-direct {v1, v2, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Stable"

    .line 106
    invoke-virtual {v1, v6, v3, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v11, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v13, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 110
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v1, v2, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, v6, v4, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v11, v12, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v13, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 149
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string v2, "val_super_night"

    .line 150
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 141
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

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

.method public static getRelation(ZZLjava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 1

    if-eqz p0, :cond_0

    .line 127
    sget-object p0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string p1, "torch_support"

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    const-string p1, "key_flash"

    const-string v0, "off,torch"

    .line 130
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_flash_facade"

    const-string v0, "off,torch,ringscreenlight"

    .line 132
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-string p1, "torch_not_support"

    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 123
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getStableNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 145
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

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
