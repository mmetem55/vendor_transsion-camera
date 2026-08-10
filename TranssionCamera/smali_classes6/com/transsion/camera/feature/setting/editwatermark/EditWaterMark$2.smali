.class Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$2;
.super Ljava/lang/Object;
.source "EditWaterMark.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$2;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCaptureEnd()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureEnd()V

    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    return-void
.end method

.method public takePictureEnd(Z)V
    .locals 0

    return-void
.end method

.method public takePictureStart()V
    .locals 0

    return-void
.end method
