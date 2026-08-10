.class public Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "FlashTopBarItemUI.java"


# instance fields
.field private final mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method public static synthetic $r8$lambda$bSh8jdtxodSwPWhGFBWB-dB3L-A(Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;->lambda$createLowPowerResponder$0(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 2

    .line 27
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 23
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 24
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const p0, 0x7f10012a

    .line 28
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    const p0, 0x7f10012b

    .line 30
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    return-void
.end method

.method private synthetic lambda$createLowPowerResponder$0(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 64
    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x2

    const-string v2, "off"

    if-ne p4, v0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_7

    .line 80
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-ne p5, v1, :cond_6

    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_1

    .line 87
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_5
    :goto_1
    if-eqz p2, :cond_7

    .line 91
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 95
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    if-eqz p1, :cond_9

    .line 66
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    return-void
.end method


# virtual methods
.method protected createLowPowerResponder(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/battery/IBatteryListener;
    .locals 1

    .line 61
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-object v0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSettingValue()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 38
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSupport()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSupport()Ljava/util/List;

    move-result-object p0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    .line 49
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "torch"

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v5

    .line 53
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method
