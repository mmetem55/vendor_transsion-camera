.class public Lcom/transsion/camera/feature/setting/flash/FlashRestriction;
.super Ljava/lang/Object;
.source "FlashRestriction.java"


# static fields
.field private static sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sScreenFlshRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 21
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 22
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sScreenFlshRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 25
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_flash"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_hdr"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "on"

    invoke-direct {v3, v1, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "auto"

    const-string v6, "off,on,auto"

    .line 28
    invoke-virtual {v3, v2, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v3, v1, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3, v2, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 31
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v7, "torch"

    invoke-direct {v3, v1, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3, v2, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 36
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sScreenFlshRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sScreenFlshRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_screen_flash"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sScreenFlshRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v3, v1, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, v2, v5, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sScreenFlshRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "off"

    invoke-direct {v3, v1, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3, v2, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 45
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sScreenFlshRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v3, v1, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3, v2, v4, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sScreenFlshRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v3, v1, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3, v2, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 58
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method static getsScreenFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 62
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->sScreenFlshRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
