.class public final Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;
.super Ljava/lang/Object;
.source "ArcFilter.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;


# instance fields
.field private mArcFilterImpl:Lcom/transsion/camera/app/common/algorithm/arcfilter/IArcFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 26
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->sInstance:Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.feature.arcfilter.capture.ArcFilterImpl"

    .line 29
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/algorithm/arcfilter/IArcFilter;

    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->mArcFilterImpl:Lcom/transsion/camera/app/common/algorithm/arcfilter/IArcFilter;

    return-void
.end method

.method public static algorithmMigrate()Z
    .locals 1

    .line 33
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->sInstance:Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;

    iget-object v0, v0, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->mArcFilterImpl:Lcom/transsion/camera/app/common/algorithm/arcfilter/IArcFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static process([BIIILjava/lang/String;)[B
    .locals 6

    .line 38
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->sInstance:Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->processImpl([BIIILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private processImpl([BIIILjava/lang/String;)[B
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->mArcFilterImpl:Lcom/transsion/camera/app/common/algorithm/arcfilter/IArcFilter;

    if-nez v0, :cond_0

    .line 44
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "mArcFilterImpl is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 48
    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/app/common/algorithm/arcfilter/IArcFilter;->process([BIIILjava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_1

    .line 52
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "process failed"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    :cond_1
    return-object p0
.end method
