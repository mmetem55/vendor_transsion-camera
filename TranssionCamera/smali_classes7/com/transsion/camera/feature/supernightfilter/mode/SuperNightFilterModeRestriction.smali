.class public Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterModeRestriction;
.super Ljava/lang/Object;
.source "SuperNightFilterModeRestriction.java"


# static fields
.field private static final KEY_MODE:Ljava/lang/String;

.field private static final sEmptyBuilder:Lcom/transsion/camera/app/common/relation/Relation$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6
    const-class v0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterModeRestriction;->KEY_MODE:Ljava/lang/String;

    .line 7
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterModeRestriction;->sEmptyBuilder:Lcom/transsion/camera/app/common/relation/Relation$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmptyRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 1

    .line 10
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterModeRestriction;->sEmptyBuilder:Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method
