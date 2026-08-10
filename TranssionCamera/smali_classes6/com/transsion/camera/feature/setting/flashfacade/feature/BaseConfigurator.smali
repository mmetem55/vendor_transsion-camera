.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;
.super Ljava/lang/Object;
.source "BaseConfigurator.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfigurator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/IConfigurator<",
        "TF;>;"
    }
.end annotation


# instance fields
.field protected final mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private mValueSupportFeature:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    return-void
.end method


# virtual methods
.method protected capturing()Z
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->capturing()Z

    move-result p0

    return p0
.end method

.method public final entry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 2

    .line 33
    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;->supportedFeatures()Ljava/util/List;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-interface {v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mValueSupportFeature:Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    return-void
.end method

.method protected featureSupport()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mValueSupportFeature:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->featureSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected forceLowLight()Z
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->forceLowLight()Z

    move-result p0

    return p0
.end method

.method protected forceLowLightState()Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->forceLowLightState()Z

    move-result p0

    return p0
.end method

.method protected lowLight()Z
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->lowLight()Z

    move-result p0

    return p0
.end method

.method public onBrightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 0

    return-void
.end method

.method public onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onPreviewStarted()V
    .locals 0

    return-void
.end method

.method public onPreviewStopped()V
    .locals 0

    return-void
.end method

.method public onRecordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onRecordStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected pause()V
    .locals 0

    return-void
.end method

.method protected recording()Z
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->recording()Z

    move-result p0

    return p0
.end method
