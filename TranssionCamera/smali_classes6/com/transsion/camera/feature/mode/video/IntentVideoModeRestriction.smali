.class public Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;
.super Ljava/lang/Object;
.source "IntentVideoModeRestriction.java"


# static fields
.field private static final KEY_INTENT_VIDEO_MODE:Ljava/lang/String;

.field public static final VALUE_AUTO:Ljava/lang/String; = "auto"

.field public static final VALUE_OFF:Ljava/lang/String; = "off"

.field public static final VALUE_ON:Ljava/lang/String; = "on"

.field public static final VALUE_RING_SCREEN_LIGHT:Ljava/lang/String; = "ringscreenlight"

.field public static final VALUE_TORCH:Ljava/lang/String; = "torch"

.field private static final sFlashRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    const-class v0, Lcom/transsion/camera/feature/mode/video/IntentVideoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;->KEY_INTENT_VIDEO_MODE:Ljava/lang/String;

    .line 22
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 23
    new-instance v2, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v2, Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;->sFlashRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 26
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v3, "key_location,key_touch_capture"

    .line 27
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 28
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "on"

    invoke-direct {v3, v0, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_location"

    const-string v5, "off"

    .line 30
    invoke-virtual {v3, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_touch_capture"

    .line 31
    invoke-virtual {v3, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 36
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v1, "key_flash,key_flash_facade"

    .line 37
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 38
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v1, v0, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_flash"

    const-string v4, "torch,auto,,off"

    .line 40
    invoke-virtual {v1, v3, v5, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v6, "key_flash_facade"

    const-string v7, "off,auto,torch,ringscreenlight"

    .line 42
    invoke-virtual {v1, v6, v5, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 38
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 45
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "auto"

    invoke-direct {v1, v0, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v3, v5, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v6, v5, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 45
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 52
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "torch"

    invoke-direct {v1, v0, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v3, v5, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v6, v5, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 52
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 59
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "ringscreenlight"

    invoke-direct {v1, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v6, v3, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 59
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 85
    sget-object v0, Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;->sFlashRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 73
    sget-object v0, Lcom/transsion/camera/feature/mode/video/IntentVideoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
