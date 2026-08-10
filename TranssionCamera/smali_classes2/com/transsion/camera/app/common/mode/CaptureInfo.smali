.class public Lcom/transsion/camera/app/common/mode/CaptureInfo;
.super Ljava/lang/Object;
.source "CaptureInfo.java"


# instance fields
.field public final mMirror:Z

.field public final mOrientation:I

.field public final mWatermark:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mMirror:Z

    .line 24
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mOrientation:I

    .line 25
    iput-boolean p3, p0, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mWatermark:Z

    return-void
.end method
