.class public final synthetic Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;

.field public final synthetic f$1:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    return-void
.end method


# virtual methods
.method public final onPlayDone(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;->$r8$lambda$P_0HjAa9XaypYMX49G3MGtR7ET4(Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    return-void
.end method
