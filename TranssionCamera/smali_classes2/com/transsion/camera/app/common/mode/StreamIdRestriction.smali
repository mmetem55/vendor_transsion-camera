.class public Lcom/transsion/camera/app/common/mode/StreamIdRestriction;
.super Ljava/lang/Object;
.source "StreamIdRestriction.java"


# static fields
.field private static final mMainRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final mPeriscopeRelation:Lcom/transsion/camera/app/common/relation/Relation;

.field private static final mPeriscopeStreamId:Ljava/lang/String;

.field private static final mWideRelation:Lcom/transsion/camera/app/common/relation/Relation;

.field private static final mWideStreamId:Ljava/lang/String;

.field private static final sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 18
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->mMainRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 19
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBack5XLongFocusCamera()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->mPeriscopeStreamId:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->mWideStreamId:Ljava/lang/String;

    .line 21
    new-instance v4, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "key_stream_id"

    invoke-direct {v4, v5, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_flash"

    const-string v6, "off"

    .line 23
    invoke-virtual {v4, v2, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v4, "key_flash_facade"

    .line 24
    invoke-virtual {v2, v4, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->mPeriscopeRelation:Lcom/transsion/camera/app/common/relation/Relation;

    .line 26
    new-instance v4, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v4, v5, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_super_definition"

    .line 28
    invoke-virtual {v4, v3, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->mWideRelation:Lcom/transsion/camera/app/common/relation/Relation;

    .line 32
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v4, "key_flash,key_flash_facade,key_super_definition"

    .line 33
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 35
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 39
    invoke-virtual {v1, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v0, "key_setting_quick_preview"

    .line 40
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 41
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "0"

    invoke-direct {v2, v5, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "false"

    .line 42
    invoke-virtual {v2, v0, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static getMainRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 65
    sget-object v0, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->mMainRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method static getRestriction(ZZLjava/lang/String;)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->mPeriscopeStreamId:Ljava/lang/String;

    if-nez p0, :cond_1

    .line 52
    sget-object p0, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string p2, "key_flash"

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->removeBodyKey(Ljava/lang/String;)V

    const-string p2, "key_flash_facade"

    .line 53
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->removeBodyKey(Ljava/lang/String;)V

    .line 54
    sget-object p2, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->mPeriscopeRelation:Lcom/transsion/camera/app/common/relation/Relation;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->removeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 57
    :cond_1
    sget-object p0, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->mWideStreamId:Ljava/lang/String;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_3

    .line 58
    :cond_2
    sget-object p0, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string p1, "key_super_definition"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->removeBodyKey(Ljava/lang/String;)V

    .line 59
    sget-object p1, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->mWideRelation:Lcom/transsion/camera/app/common/relation/Relation;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->removeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 61
    :cond_3
    sget-object p0, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0
.end method
