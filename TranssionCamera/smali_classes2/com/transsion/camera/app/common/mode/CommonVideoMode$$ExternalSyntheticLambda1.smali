.class public final synthetic Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    return-void
.end method


# virtual methods
.method public final onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->$r8$lambda$IpEmW9YS5iyFDcIrEKPb96sEgA4(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method
