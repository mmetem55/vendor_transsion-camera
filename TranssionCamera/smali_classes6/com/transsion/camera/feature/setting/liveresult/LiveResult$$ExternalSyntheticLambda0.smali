.class public final synthetic Lcom/transsion/camera/feature/setting/liveresult/LiveResult$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    return-void
.end method


# virtual methods
.method public final onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->$r8$lambda$m-0gKf_1dOGwYFRkp3SdmtgQfiQ(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method
