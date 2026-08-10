.class public Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeRestriction;
.super Ljava/lang/Object;
.source "ExposureTimeRestriction.java"


# static fields
.field private static final sExposureRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 11
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 12
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeRestriction;->sExposureRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_pro_parameter"

    .line 15
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v3, "key_flash,key_flash_facade"

    .line 16
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 17
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "mutual_off"

    invoke-direct {v3, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_flash"

    const-string v5, "off"

    .line 19
    invoke-virtual {v3, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v6, "key_flash_facade"

    .line 20
    invoke-virtual {v3, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 22
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v7, "on"

    invoke-direct {v3, v2, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "off,auto,on,torch"

    .line 24
    invoke-virtual {v3, v4, v7, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 26
    invoke-virtual {v3, v6, v7, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 22
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 29
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v3, v2, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "torch,auto,on,off"

    .line 31
    invoke-virtual {v3, v4, v5, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 33
    invoke-virtual {v3, v6, v5, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 36
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "auto"

    invoke-direct {v3, v2, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3, v4, v5, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 40
    invoke-virtual {v3, v6, v5, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 43
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "torch"

    invoke-direct {v3, v2, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3, v4, v5, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 47
    invoke-virtual {v3, v6, v5, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 57
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v0, "key_exposure"

    .line 58
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 59
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v3, v2, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v0, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getExposureRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 65
    sget-object v0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeRestriction;->sExposureRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method static getExposureTimeRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 53
    sget-object v0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
