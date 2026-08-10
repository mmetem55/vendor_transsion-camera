.class public interface abstract Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$CaptureStateCallback;
.super Ljava/lang/Object;
.source "IFlashFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureStateCallback"
.end annotation


# virtual methods
.method public abstract onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
.end method

.method public abstract onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
.end method
