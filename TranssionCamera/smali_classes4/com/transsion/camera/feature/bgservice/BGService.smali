.class public Lcom/transsion/camera/feature/bgservice/BGService;
.super Ljava/lang/Object;
.source "BGService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;,
        Lcom/transsion/camera/feature/bgservice/BGService$HwBinderDeathRecipient;
    }
.end annotation


# instance fields
.field private mBGService:Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;


# direct methods
.method private constructor <init>(Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGService;->mBGService:Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;

    return-void
.end method

.method public static getService(Ljava/lang/String;Z)Lcom/transsion/camera/feature/bgservice/BGService;
    .locals 1

    .line 38
    :try_start_0
    new-instance p0, Lcom/transsion/camera/feature/bgservice/BGService;

    const-string p1, "internal/0"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/bgservice/BGService;-><init>(Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public linkToDeath(Lcom/transsion/camera/feature/bgservice/BGService$HwBinderDeathRecipient;I)V
    .locals 2

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGService;->mBGService:Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;

    new-instance v1, Lcom/transsion/camera/feature/bgservice/BGService$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/bgservice/BGService$1;-><init>(Lcom/transsion/camera/feature/bgservice/BGService;Lcom/transsion/camera/feature/bgservice/BGService$HwBinderDeathRecipient;)V

    int-to-long p0, p2

    invoke-interface {v0, v1, p0, p1}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setEventCallback(ILcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;)V
    .locals 2

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGService;->mBGService:Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;

    new-instance v1, Lcom/transsion/camera/feature/bgservice/BGService$2;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/feature/bgservice/BGService$2;-><init>(Lcom/transsion/camera/feature/bgservice/BGService;Lcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;)V

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IBGService;->setEventCallback(ILvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
