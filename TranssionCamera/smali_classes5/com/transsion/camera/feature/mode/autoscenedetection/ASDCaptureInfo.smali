.class public Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;
.super Lcom/transsion/camera/app/common/mode/CaptureInfo;
.source "ASDCaptureInfo.java"


# instance fields
.field public final mArcFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZZLjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    .line 22
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;->mArcFilter:Ljava/lang/String;

    return-void
.end method
