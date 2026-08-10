.class public Lcom/transsion/camera/feature/mode/video/TimeLapseVideoHelper;
.super Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
.source "TimeLapseVideoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoNameFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "\'VID\'_yyyyMMdd_HHmmss\'_TIME-LAPSE\'"

    return-object p0
.end method
