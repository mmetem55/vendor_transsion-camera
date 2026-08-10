.class public Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;
.super Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;
.source "FlashAdjustUI.java"


# static fields
.field private static final ADJUST_UI_HIDE_DELAY:I = 0x7d0


# instance fields
.field private mFlashLuminanceAdjustView:Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-void
.end method

.method private calculateGrade(I)I
    .locals 2

    .line 54
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMinLuminanceValue:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x41a00000    # 20.0f

    mul-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method


# virtual methods
.method protected doOnUp()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected loadAdjustUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0090

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 28
    move-object p2, p1

    check-cast p2, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashLuminanceAdjustView:Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;

    return-object p1
.end method

.method protected refreshAdjustUI(I)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashLuminanceAdjustView:Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->calculateGrade(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->setGrade(I)V

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected showAdjustUI()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->showAdjustUI()V

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getLuminanceValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    .line 36
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->refreshAdjustUI(I)V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setAdjustUIOrientation(I)V

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
