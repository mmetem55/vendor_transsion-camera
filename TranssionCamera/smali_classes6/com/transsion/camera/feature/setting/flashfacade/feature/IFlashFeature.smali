.class public interface abstract Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;
.super Ljava/lang/Object;
.source "IFlashFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$BrightnessCallback;,
        Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$RecordStateCallback;,
        Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$CaptureStateCallback;,
        Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$PreviewStateCallback;
    }
.end annotation


# virtual methods
.method public abstract configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
.end method

.method public abstract featureSupport()Z
.end method

.method public abstract getBrightnessCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$BrightnessCallback;
.end method

.method public abstract getCaptureStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$CaptureStateCallback;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getPreviewStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$PreviewStateCallback;
.end method

.method public abstract getRecordStateCallback()Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$RecordStateCallback;
.end method

.method public abstract getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
.end method

.method public abstract onFeatureLoad()V
.end method

.method public abstract onModeClose(Ljava/lang/String;)V
.end method

.method public abstract onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
.end method

.method public abstract pause()V
.end method

.method public abstract restoreToDefault()V
.end method

.method public abstract resume()V
.end method

.method public abstract setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateFacadeValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
.end method
