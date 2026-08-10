.class public interface abstract Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature$RecordStateCallback;
.super Ljava/lang/Object;
.source "IFlashFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordStateCallback"
.end annotation


# virtual methods
.method public abstract onRecordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
.end method

.method public abstract onRecordStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
.end method
