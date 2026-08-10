.class public Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;
.super Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;
.source "FlashValueAuto.java"


# instance fields
.field private final mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

.field private final mSupportedFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    .line 34
    iget-object p0, p2, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLowLightAutoSupportedFeatures:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private ledFlashSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;)Z
    .locals 0

    const-string p0, "key_flash"

    .line 83
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;->get(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected initSupportedFeatures(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized supportedFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public valueSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;)Z
    .locals 3

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->ledFlashSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v1, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLedFlashLowLight:Z

    if-eqz v1, :cond_0

    .line 54
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLowLightAutoSupportedFeatures:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoSupportedFeatures:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLowLightAutoSupportedFeatures:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 65
    :goto_0
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 67
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;->mSupportedFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "key_super_flash"

    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;->get(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 74
    monitor-exit p0

    return p1

    .line 77
    :cond_4
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
