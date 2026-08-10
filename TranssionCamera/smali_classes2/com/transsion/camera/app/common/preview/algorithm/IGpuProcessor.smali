.class public interface abstract Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;
.super Ljava/lang/Object;
.source "IGpuProcessor.java"


# virtual methods
.method public abstract getPreProcessed()Z
.end method

.method public abstract onCameraOperateAction(I)V
.end method

.method public abstract onFirstSteadyFrame()V
.end method

.method public abstract onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
.end method

.method public abstract onModePaused()V
.end method

.method public abstract onModeResumed()V
.end method

.method public abstract onModeUnInit()V
.end method

.method public abstract onSettingReady()V
.end method

.method public abstract onSurfaceDestoryed()V
.end method

.method public abstract process(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJ)Z
.end method

.method public abstract setPreProcessed(Z)V
.end method
