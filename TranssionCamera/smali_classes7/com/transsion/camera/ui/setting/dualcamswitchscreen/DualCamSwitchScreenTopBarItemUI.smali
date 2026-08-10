.class Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "DualCamSwitchScreenTopBarItemUI.java"


# instance fields
.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRotationValueFrom:F

.field private mRotationValueTo:F


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 2

    .line 20
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 15
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3e800000    # 0.25f

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, p2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->mRotationValueFrom:F

    .line 17
    iput p1, p0, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->mRotationValueTo:F

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedAnimation:Z

    return-void
.end method


# virtual methods
.method protected doOnValueChanged()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->startAnimation(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public startAnimation(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->mRotationValueTo:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, -0x3ccc0000    # -180.0f

    if-nez v0, :cond_1

    .line 41
    iput v1, p0, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->mRotationValueFrom:F

    .line 42
    iput v2, p0, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->mRotationValueTo:F

    goto :goto_0

    .line 44
    :cond_1
    iput v2, p0, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->mRotationValueFrom:F

    .line 45
    iput v1, p0, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->mRotationValueTo:F

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 47
    iget v1, p0, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->mRotationValueFrom:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->mRotationValueTo:F

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "rotation"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    .line 48
    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 26
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/transsion/camera/ui/setting/dualcamswitchscreen/DualCamSwitchScreenTopBarItemUI;->mRotationValueTo:F

    return-void
.end method
