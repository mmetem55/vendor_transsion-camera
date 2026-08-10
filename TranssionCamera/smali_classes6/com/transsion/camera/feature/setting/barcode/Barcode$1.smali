.class Lcom/transsion/camera/feature/setting/barcode/Barcode$1;
.super Ljava/lang/Object;
.source "Barcode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$1;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$1;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$602(Lcom/transsion/camera/feature/setting/barcode/Barcode;J)J

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$1;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$700(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$1;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$1;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$502(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$1;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$400(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->sendSettingChangeRequest()V

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$1;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$502(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    return-void
.end method
