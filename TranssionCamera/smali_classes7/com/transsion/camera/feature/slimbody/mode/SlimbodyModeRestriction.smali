.class public Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;
.super Ljava/lang/Object;
.source "SlimbodyModeRestriction.java"


# static fields
.field private static final KEY_HDR:Ljava/lang/String; = "key_hdr"

.field private static final KEY_SLIMBODY_MODE:Ljava/lang/String;

.field static final VALUE_ON:Ljava/lang/String; = "on"

.field private static sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    const-class v0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->KEY_SLIMBODY_MODE:Ljava/lang/String;

    .line 23
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 24
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 25
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 28
    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_hdr,key_distortion_correction,key_fold_column"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 31
    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "on"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_hdr"

    const-string v5, "off"

    .line 33
    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v6, "key_distortion_correction"

    .line 34
    invoke-virtual {v2, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v6, "key_fold_column"

    .line 35
    invoke-virtual {v2, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 40
    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_hdr,key_fold_column"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 45
    invoke-virtual {v2, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 50
    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_face_detection,key_fold_column"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_face_detection"

    const-string v3, "gender_indentification"

    .line 53
    invoke-virtual {v2, v0, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 81
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->KEY_SLIMBODY_MODE:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string v2, "val_beauty"

    .line 82
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getFaceAttributeRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 76
    sget-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getRelation(IZ)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_0

    .line 67
    sget-object p0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_1
    sget-object p0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0
.end method
