.class public Lcom/transsion/camera/feature/mode/makeup/MakeUpModeRestriction;
.super Ljava/lang/Object;
.source "MakeUpModeRestriction.java"


# static fields
.field private static final KEY_HDR:Ljava/lang/String; = "key_hdr"

.field private static final KEY_MAKEUP_MODE:Ljava/lang/String;

.field static final VALUE_ON:Ljava/lang/String; = "on"

.field private static final sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sNotSupportHDR:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 17
    const-class v0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeRestriction;->KEY_MAKEUP_MODE:Ljava/lang/String;

    .line 23
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 24
    new-instance v2, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v2, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeRestriction;->sNotSupportHDR:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 25
    new-instance v3, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 28
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v4, "key_hdr,key_distortion_correction,key_fold_column"

    .line 29
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 31
    new-instance v4, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "on"

    invoke-direct {v4, v0, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "key_hdr"

    const-string v7, "off"

    .line 33
    invoke-virtual {v4, v6, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v4

    const-string v8, "key_distortion_correction"

    .line 34
    invoke-virtual {v4, v8, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v4

    const-string v8, "key_fold_column"

    .line 35
    invoke-virtual {v4, v8, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v4

    .line 31
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 40
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v1, "key_hdr,key_fold_column"

    .line 41
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v1, v0, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v6, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v8, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 42
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 50
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v1, "key_face_detection,key_fold_column"

    .line 51
    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v1, v0, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_face_detection"

    const-string v2, "gender_indentification"

    .line 53
    invoke-virtual {v1, v0, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v8, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 52
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 77
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeRestriction;->KEY_MAKEUP_MODE:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string v2, "val_beauty"

    .line 78
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getFaceAttributeRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 73
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getRelation(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 0

    if-eqz p0, :cond_0

    .line 66
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeRestriction;->sNotSupportHDR:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
