.class public interface abstract Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;
.super Ljava/lang/Object;
.source "IBGService.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.mediatek.hardware.camera.bgservice@1.0::IBGService"

    .line 26
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27
    instance-of v3, v2, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;

    if-eqz v3, :cond_1

    .line 28
    check-cast v2, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;

    return-object v2

    .line 30
    :cond_1
    new-instance v2, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService$Proxy;

    invoke-direct {v2, p0}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 33
    :try_start_0
    invoke-virtual {v2}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 35
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.mediatek.hardware.camera.bgservice@1.0::IBGService"

    .line 56
    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEventCallback(ILvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
