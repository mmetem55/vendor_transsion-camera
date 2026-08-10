.class public interface abstract Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.super Ljava/lang/Object;
.source "ICameraSetting.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/ICameraSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IParametersConfigure"
.end annotation


# virtual methods
.method public abstract configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
.end method

.method public abstract configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
.end method

.method public abstract setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
.end method
