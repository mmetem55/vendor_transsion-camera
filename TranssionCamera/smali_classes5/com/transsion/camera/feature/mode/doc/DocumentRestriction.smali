.class public Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;
.super Ljava/lang/Object;
.source "DocumentRestriction.java"


# static fields
.field private static final KEY_DOC_MODE:Ljava/lang/String;

.field static final VALUE_ON:Ljava/lang/String; = "on"

.field private static sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    const-class v0, Lcom/transsion/camera/feature/mode/doc/DocumentEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->KEY_DOC_MODE:Ljava/lang/String;

    .line 25
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 29
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 30
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_hdr,key_auto_watermark,key_eye_detection,key_face_detection,key_auto_focus_switch,key_asd"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 32
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "on"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_hdr"

    const-string v3, "off"

    .line 34
    invoke-virtual {v2, v0, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_auto_watermark"

    .line 35
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_eye_detection"

    .line 36
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_face_detection"

    .line 37
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_auto_focus_switch"

    .line 38
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_asd"

    .line 39
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 53
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->KEY_DOC_MODE:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string v2, "val_doc"

    .line 54
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getMFNRRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 5

    .line 67
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->KEY_DOC_MODE:Ljava/lang/String;

    const-string v2, "on"

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_asd"

    const-string v3, "0"

    const-string v4, "0,1,auto"

    .line 68
    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_setting_smart_denoise"

    .line 69
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_super_definition"

    const-string v2, "off"

    .line 70
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 49
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getSuperDefinitionRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 5

    .line 59
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->KEY_DOC_MODE:Ljava/lang/String;

    const-string v2, "on"

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_asd"

    const-string v3, "0"

    const-string v4, "0,1,auto"

    .line 60
    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_setting_smart_denoise"

    const-string v3, "off"

    .line 61
    invoke-virtual {v0, v1, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_super_definition"

    .line 62
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method
