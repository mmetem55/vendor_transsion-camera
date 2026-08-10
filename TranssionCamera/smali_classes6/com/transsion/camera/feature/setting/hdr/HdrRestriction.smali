.class public Lcom/transsion/camera/feature/setting/hdr/HdrRestriction;
.super Ljava/lang/Object;
.source "HdrRestriction.java"


# static fields
.field private static final sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sShot2shotNeedGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/hdr/HdrRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 11
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/setting/hdr/HdrRestriction;->sShot2shotNeedGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_hdr"

    .line 14
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v3, "key_flash,key_flash_facade,key_filter"

    .line 15
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 16
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "auto"

    invoke-direct {v3, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 19
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "off"

    invoke-direct {v3, v2, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 19
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 23
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v0, "key_flash,key_flash_facade,key_filter,key_shot2shot"

    .line 24
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v0, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_shot2shot"

    const-string v4, "0"

    .line 27
    invoke-virtual {v0, v3, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 29
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v0, v2, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHdrRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 0

    if-eqz p0, :cond_0

    .line 41
    sget-object p0, Lcom/transsion/camera/feature/setting/hdr/HdrRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0

    .line 43
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/setting/hdr/HdrRestriction;->sShot2shotNeedGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0
.end method
