.class public Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightRestriction;
.super Ljava/lang/Object;
.source "SuperNightRestriction.java"


# static fields
.field private static sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_supernight_filter"

    .line 11
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSuperNightFilterRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 15
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
