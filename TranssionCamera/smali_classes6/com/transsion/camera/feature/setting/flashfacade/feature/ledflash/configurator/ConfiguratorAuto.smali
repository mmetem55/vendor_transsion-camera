.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;
.source "ConfiguratorAuto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;,
        Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;,
        Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$OriginalStrategy;,
        Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$StubStrategy;,
        Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mOriginalStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

.field private final mScreenSupplySupportStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

.field private mStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

.field private final mStubStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

.field private final mSuperFlashSupportStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LedFlashConfiguratorAuto"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    .line 48
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$StubStrategy;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$StubStrategy;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mStubStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    .line 49
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$OriginalStrategy;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$OriginalStrategy;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mOriginalStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    .line 50
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$SuperFlashSupportStrategy;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mSuperFlashSupportStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    .line 51
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$ScreenSupplySupportStrategy;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mScreenSupplySupportStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Z
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->screenFlashOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Z
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->ringScreenLightOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    return-object p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Z
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->oneStageFlashStyle()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;)Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    return-object p0
.end method

.method private checkRingScreenLightSupport(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Z
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->ringScreenLightSupport()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 102
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;->supportedFeatures()Ljava/util/List;

    move-result-object p0

    const-string p1, "key_ring_screen_light"

    .line 103
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private checkScreenFlashSupport(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Z
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->screenFlashSupport()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 94
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;->supportedFeatures()Ljava/util/List;

    move-result-object p0

    const-string p1, "key_screen_flash"

    .line 95
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private checkScreenSupplySupport(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Z
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->checkScreenFlashSupport(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->checkRingScreenLightSupport(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateStrategy(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->videoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mOriginalStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->access$000(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->oneStageFlashStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mSuperFlashSupportStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->access$000(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->checkScreenSupplySupport(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mScreenSupplySupportStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->access$000(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mOriginalStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->access$000(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mStubStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->access$000(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->forceLowLight()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->lowLight()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->forceLowLight()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->forceLowLightState()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->onCaptureStart(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigStart()V
    .locals 0

    .line 121
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->onConfigStart()V

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->onConfigStart()V

    return-void
.end method

.method public onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->setFlashAutoMode(Z)V

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->updateStrategy(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    return-void
.end method

.method public onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method protected pause()V
    .locals 0

    .line 108
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->pause()V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto;->mStrategy:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorAuto$BaseStrategy;->pause()V

    :cond_0
    return-void
.end method
