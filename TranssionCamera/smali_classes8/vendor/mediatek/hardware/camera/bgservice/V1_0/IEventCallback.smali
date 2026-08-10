.class public interface abstract Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback;
.super Ljava/lang/Object;
.source "IEventCallback.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract onCompleted(III)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
