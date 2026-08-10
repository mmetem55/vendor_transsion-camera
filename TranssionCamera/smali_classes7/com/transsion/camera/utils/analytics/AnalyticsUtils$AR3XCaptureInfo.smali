.class public Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;
.super Ljava/lang/Object;
.source "AnalyticsUtils.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/analytics/AnalyticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AR3XCaptureInfo"
.end annotation


# instance fields
.field public final background:Ljava/lang/String;

.field public final cameraId:Ljava/lang/String;

.field public final effect:Ljava/lang/String;

.field public final express:Ljava/lang/String;

.field public final moduleId:Ljava/lang/String;

.field public final size:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->moduleId:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->cameraId:Ljava/lang/String;

    .line 403
    iput-object p3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->background:Ljava/lang/String;

    .line 404
    iput-object p4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->express:Ljava/lang/String;

    .line 405
    iput-object p5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->effect:Ljava/lang/String;

    .line 406
    iput-object p6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->size:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moduleId = "

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->moduleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cameraId = "

    .line 414
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "background = "

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->background:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "express = "

    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->express:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "effect = "

    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->effect:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "size = "

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->size:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
