.class Lcom/transsion/camera/app/common/mode/Restriction3A;
.super Ljava/lang/Object;
.source "Restriction3A.java"


# static fields
.field private static final sAeAfAwbRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sAeAfRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sAeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sAfRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/Restriction3A;->sAeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 35
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/app/common/mode/Restriction3A;->sAfRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 36
    new-instance v2, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v2, Lcom/transsion/camera/app/common/mode/Restriction3A;->sAeAfRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 37
    new-instance v3, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v3, Lcom/transsion/camera/app/common/mode/Restriction3A;->sAeAfAwbRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v4, "key_ae_af_lock_state"

    .line 40
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v5, "key_exposure,key_face_detection,key_auto_focus_switch,key_flash_facade"

    .line 41
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 43
    new-instance v5, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v6, "on"

    invoke-direct {v5, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "key_exposure"

    const-string v8, "exposure-lock"

    const-string v9, "true"

    .line 45
    invoke-virtual {v5, v7, v8, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v5

    const-string v10, "key_face_detection"

    const-string v11, "off"

    .line 46
    invoke-virtual {v5, v10, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v5

    const-string v12, "key_auto_focus_switch"

    .line 47
    invoke-virtual {v5, v12, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v5

    const-string v13, "key_flash_facade"

    .line 48
    invoke-virtual {v5, v13, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v5

    .line 49
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v5

    .line 43
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 50
    new-instance v5, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v5, v4, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v5, v7, v8, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v5

    const/4 v14, 0x0

    .line 53
    invoke-virtual {v5, v10, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v5

    .line 54
    invoke-virtual {v5, v12, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v5

    .line 55
    invoke-virtual {v5, v13, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v5

    .line 56
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v5

    .line 50
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 58
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v0, "key_focus,key_face_detection,key_auto_focus_switch"

    .line 59
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v0, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "key_focus"

    const-string v15, "auto"

    .line 64
    invoke-virtual {v0, v5, v15, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v10, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v12, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 68
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v0, v4, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v5, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v10, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v12, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 68
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 75
    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v0, "key_exposure,key_focus,key_face_detection,key_auto_focus_switch,key_flash_facade"

    .line 76
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v0, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v7, v8, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v5, v15, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v10, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v12, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v13, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 81
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 89
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v0, v4, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v7, v8, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v5, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v10, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v12, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v13, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 89
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 98
    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v0, "key_exposure,key_focus,key_face_detection,key_auto_focus_switch,key_white_balance,key_flash_facade"

    .line 99
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v0, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v7, v8, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v5, v15, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v10, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v12, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_white_balance"

    const-string v2, "white-balance-lock"

    .line 111
    invoke-virtual {v0, v1, v2, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v13, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 105
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 114
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v0, v4, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v7, v8, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v5, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v10, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v12, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v1, v2, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v13, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 114
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public static get3aRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 138
    sget-object v0, Lcom/transsion/camera/app/common/mode/Restriction3A;->sAeAfAwbRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getAeAfRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 134
    sget-object v0, Lcom/transsion/camera/app/common/mode/Restriction3A;->sAeAfRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getAeRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 126
    sget-object v0, Lcom/transsion/camera/app/common/mode/Restriction3A;->sAeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getAfRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 130
    sget-object v0, Lcom/transsion/camera/app/common/mode/Restriction3A;->sAfRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
