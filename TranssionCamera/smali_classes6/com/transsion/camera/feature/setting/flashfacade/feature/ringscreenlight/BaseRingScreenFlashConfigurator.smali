.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/BaseRingScreenFlashConfigurator;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;
.source "BaseRingScreenFlashConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator<",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;)V

    return-void
.end method


# virtual methods
.method public onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    .line 31
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
