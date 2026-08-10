.class final Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;
.super Ljava/lang/Object;
.source "CameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CaptureCallbackGroup"
.end annotation


# instance fields
.field mCurShutterPriority:I

.field mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field mNeedCaptureSound:Z

.field final mPostCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field final mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field final mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->this$0:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mNeedCaptureSound:Z

    const/4 p1, -0x1

    .line 283
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mCurShutterPriority:I

    .line 291
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    .line 292
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 293
    iput-object p4, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mPostCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 294
    iput-object p5, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZI)V
    .locals 0

    .line 300
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;-><init>(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    .line 301
    iput-boolean p6, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mNeedCaptureSound:Z

    .line 302
    iput p7, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mCurShutterPriority:I

    return-void
.end method
