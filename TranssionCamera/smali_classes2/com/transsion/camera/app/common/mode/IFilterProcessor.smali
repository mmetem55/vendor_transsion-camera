.class public interface abstract Lcom/transsion/camera/app/common/mode/IFilterProcessor;
.super Ljava/lang/Object;
.source "IFilterProcessor.java"


# virtual methods
.method public abstract init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V
.end method

.method public abstract onPostViewData(IIIZ)Z
.end method

.method public abstract onShutterClick()Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateFilterSupportIds(Ljava/lang/String;)V
.end method
