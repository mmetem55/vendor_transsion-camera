.class Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;
.super Ljava/lang/Object;
.source "EditWaterMark.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


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

    .line 304
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 3

    .line 311
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPreviewStarted mIsModeSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$400(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mModeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$500(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$500(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, v1, :cond_0

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$400(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$600(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    const-string v0, "value_edit_watermark_on"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->onValueChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 317
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$3;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->onValueChanged(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onPreviewStopped()V
    .locals 0

    return-void
.end method
