.class public abstract Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
.super Ljava/lang/Object;
.source "BaseConfiguratorManager.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfiguratorManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
        "C:",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator<",
        "TF;>;>",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfiguratorManager<",
        "TF;",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfigurator<",
        "TF;>;>;"
    }
.end annotation


# instance fields
.field protected mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final mConfiguratorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TC;>;"
        }
    .end annotation
.end field

.field protected final mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfiguratorMap:Ljava/util/Map;

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    return-void
.end method


# virtual methods
.method protected abstract createConfiguratorFactory()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory<",
            "TF;TC;>;"
        }
    .end annotation
.end method

.method public final initConfigurators()V
    .locals 5

    .line 38
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->createConfiguratorFactory()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->mFlashFacadeValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfiguratorMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->getConfigurator(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBrightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onBrightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onPreviewStarted()V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onPreviewStarted()V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onPreviewStopped()V

    :cond_0
    return-void
.end method

.method public onRecordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onRecordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onRecordStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onRecordStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public pause()V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->pause()V

    :cond_0
    return-void
.end method

.method public updateFlashValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfiguratorMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    .line 50
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->entry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    .line 51
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->configAll(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method
