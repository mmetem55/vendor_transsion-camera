.class public Lcom/transsion/camera/feature/setting/selftimer/SelfTimerRestriction;
.super Ljava/lang/Object;
.source "SelfTimerRestriction.java"


# static fields
.field private static sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/selftimer/SelfTimerRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSelfTimerRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 47
    sget-object v0, Lcom/transsion/camera/feature/setting/selftimer/SelfTimerRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
