.class public Lcom/transsion/camera/feature/mode/video/SlowMotionVideoHelper;
.super Lcom/transsion/camera/feature/mode/video/VideoHelper;
.source "SlowMotionVideoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoNameFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "\'VID\'_yyyyMMdd_HHmmss\'_SLO-MO\'"

    return-object p0
.end method
