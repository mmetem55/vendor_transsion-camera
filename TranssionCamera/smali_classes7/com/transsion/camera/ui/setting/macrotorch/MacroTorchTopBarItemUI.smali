.class Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "MacroTorchTopBarItemUI.java"


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method public static synthetic $r8$lambda$nKeD9AyZ9dVeDSXko9xSBymcafM(Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->lambda$createLowPowerResponder$0(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 2

    .line 31
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 27
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 28
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const p0, 0x7f10012a

    .line 32
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    const p0, 0x7f10012b

    .line 34
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    return-void
.end method

.method private synthetic lambda$createLowPowerResponder$0(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 54
    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    const-string v2, "off"

    if-ne p4, v0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_7

    .line 66
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-ne p5, v1, :cond_6

    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_1

    .line 73
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_5
    :goto_1
    if-eqz p2, :cond_7

    .line 77
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 81
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method protected createLowPowerResponder(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/battery/IBatteryListener;
    .locals 1

    .line 51
    new-instance v0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-object v0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    return-void
.end method
