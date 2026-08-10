.class final Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlashConfiguratorFactory;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;
.source "ScreenFlashConfiguratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory<",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/BaseScreenFLashConfigurator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getConfigurator(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlashConfiguratorFactory;->getConfigurator(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/BaseScreenFLashConfigurator;

    move-result-object p0

    return-object p0
.end method

.method protected getConfigurator(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/BaseScreenFLashConfigurator;
    .locals 2

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ringscreenlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "screenflash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :pswitch_0
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorRingScreenLight;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorRingScreenLight;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;)V

    goto :goto_1

    .line 52
    :pswitch_1
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorTorch;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorTorch;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;)V

    goto :goto_1

    .line 48
    :pswitch_2
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorAuto;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorAuto;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;)V

    goto :goto_1

    .line 40
    :pswitch_3
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorOff;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorOff;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;)V

    goto :goto_1

    .line 44
    :pswitch_4
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorOn;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorOn;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;)V

    goto :goto_1

    .line 60
    :pswitch_5
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorScreenFlash;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorScreenFlash;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;)V

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2326cfc -> :sswitch_5
        0xddf -> :sswitch_4
        0x1ad6f -> :sswitch_3
        0x2dddaf -> :sswitch_2
        0x696d3fc -> :sswitch_1
        0x3a942ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
