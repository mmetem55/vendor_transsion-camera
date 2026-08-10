.class public final Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;


# instance fields
.field private mWatermarkImpl:Lcom/transsion/camera/app/common/algorithm/watermark/IWatermark;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 26
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->sInstance:Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.feature.watermark.WatermarkImpl"

    .line 29
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/algorithm/watermark/IWatermark;

    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->mWatermarkImpl:Lcom/transsion/camera/app/common/algorithm/watermark/IWatermark;

    return-void
.end method

.method public static algorithmMigrate()Z
    .locals 1

    .line 33
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->sInstance:Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;

    iget-object v0, v0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->mWatermarkImpl:Lcom/transsion/camera/app/common/algorithm/watermark/IWatermark;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static process([BIII)[B
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->sInstance:Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->processImpl([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method private processImpl([BIII)[B
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->mWatermarkImpl:Lcom/transsion/camera/app/common/algorithm/watermark/IWatermark;

    if-nez p0, :cond_0

    .line 42
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "mWatermarkImpl is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 47
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/watermark/IWatermark;->process([BIII)[B

    move-result-object p0

    if-nez p0, :cond_1

    .line 50
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "process failed"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    :cond_1
    return-object p0
.end method
