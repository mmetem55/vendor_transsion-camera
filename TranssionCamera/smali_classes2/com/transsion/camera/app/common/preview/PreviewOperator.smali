.class public Lcom/transsion/camera/app/common/preview/PreviewOperator;
.super Ljava/lang/Object;
.source "PreviewOperator.java"

# interfaces
.implements Lcom/transsion/camera/app/common/preview/IPreviewOperator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeInGLThread(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public forceRender()V
    .locals 0

    return-void
.end method

.method public getBitmap(III)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadGLResource(ZI)V
    .locals 0

    return-void
.end method

.method public loadGLResources(Z[I)V
    .locals 0

    return-void
.end method

.method public modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .locals 0

    return-void
.end method

.method public modePause()V
    .locals 0

    return-void
.end method

.method public modeReload()V
    .locals 0

    return-void
.end method

.method public modeResume()V
    .locals 0

    return-void
.end method

.method public modeUninit()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public resetDrawState()V
    .locals 0

    return-void
.end method

.method public setPhotoWithNormalPreview()V
    .locals 0

    return-void
.end method

.method public setVideoWithP3Preview()V
    .locals 0

    return-void
.end method

.method public startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public stopRenderRequest()V
    .locals 0

    return-void
.end method
