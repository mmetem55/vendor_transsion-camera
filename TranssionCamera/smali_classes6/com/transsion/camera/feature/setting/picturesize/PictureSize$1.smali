.class Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;
.super Ljava/lang/Object;
.source "PictureSize.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/picturesize/PictureSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->access$100(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updatePreviewState(Z)V

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->access$300(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->access$402(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;Z)Z

    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->access$100(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updatePreviewState(Z)V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->access$200(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
