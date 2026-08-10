.class public Lcom/transsion/camera/app/common/mode/NullPictureCallback;
.super Ljava/lang/Object;
.source "NullPictureCallback.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSingleCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .locals 0

    const/4 p0, 0x0

    .line 29
    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    return-void
.end method

.method public notifyPictureTaken([BZI)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPostViewData([B)V
    .locals 0

    return-void
.end method

.method public onPostViewData([BIIII)V
    .locals 0

    return-void
.end method
