.class Lcom/transsion/camera/feature/setting/focus/LockRestriction;
.super Ljava/lang/Object;
.source "LockRestriction.java"


# static fields
.field private static final KEY_LOCK:Ljava/lang/String; = "LockRestriction"

.field private static final sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    const-class v0, Lcom/transsion/camera/feature/setting/focus/LockRestriction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/setting/focus/LockRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 27
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v2, "key_touch_capture"

    .line 28
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 29
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "on"

    invoke-direct {v3, v0, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "off"

    .line 31
    invoke-virtual {v3, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 29
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 33
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v3, v0, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {v3, v2, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 40
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/LockRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
