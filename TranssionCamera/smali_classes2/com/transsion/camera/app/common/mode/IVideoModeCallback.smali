.class public interface abstract Lcom/transsion/camera/app/common/mode/IVideoModeCallback;
.super Ljava/lang/Object;
.source "IVideoModeCallback.java"


# virtual methods
.method public abstract init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;I)V
.end method

.method public abstract onOrientationChanged(IZ)V
.end method

.method public abstract reset()V
.end method

.method public abstract resume()V
.end method

.method public abstract setHDRDataPreviewDataCallback(Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;)V
.end method

.method public abstract setVideoBackWideSupport360Hdr(Z)V
.end method

.method public abstract setVideoHDRState(Z)V
.end method

.method public abstract setVideoSuperNightSupport(Z)V
.end method

.method public abstract snapshot(I)V
.end method

.method public abstract startStopRecording(Z)V
.end method

.method public abstract unInit()V
.end method
