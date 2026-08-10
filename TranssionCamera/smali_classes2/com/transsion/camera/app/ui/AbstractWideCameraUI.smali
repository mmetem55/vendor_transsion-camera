.class public abstract Lcom/transsion/camera/app/ui/AbstractWideCameraUI;
.super Ljava/lang/Object;
.source "AbstractWideCameraUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IWideCameraUI;


# static fields
.field private static PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field protected final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mAllowSetAlpha:Z

.field protected mCurrentCameraId:Ljava/lang/String;

.field protected mFrontSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

.field protected mIsNeedShowFrontUI:Z

.field protected mIsNeedShowUI:Z

.field protected mIsZoomWheelShowing:Z

.field protected mOffsetPadding:I

.field protected mOrientation:I

.field protected mRootView:Landroid/view/View;

.field protected mScreenFormType:I

.field protected mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field protected mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;"
        }
    .end annotation
.end field

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$Tsbw7XEgbNSf6GlEF5eRNHwVYjw(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->lambda$updateRootViewPadding$0(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    .line 31
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    .line 34
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOrientation:I

    .line 44
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-void
.end method

.method private synthetic lambda$updateRootViewPadding$0(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 282
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public couldShow(Z)V
    .locals 0

    return-void
.end method

.method protected hasTeleItem()Z
    .locals 4

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 254
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.transsion.camera.ui.setting.zoom.TeleZoomItemUI"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 256
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.ui.setting.zoom.SecondZoomItemUI"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public hide()V
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->loadWideCameraUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    .line 53
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateRootViewPadding(IZ)V

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method protected isCameraFacingBack(Ljava/lang/String;)Z
    .locals 0

    .line 62
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected abstract loadWideCameraUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 3

    .line 160
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setZoomWheelShow(I)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyCameraOperateActionToUI] action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mIsNeedShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsNeedShowFrontUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsZoomWheelShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/16 v1, 0x9

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-eq p1, v1, :cond_6

    const/4 v1, 0x6

    if-eq p1, v1, :cond_6

    const/4 v1, 0x7

    if-eq p1, v1, :cond_6

    const/16 v1, 0xb

    if-eq p1, v1, :cond_5

    const/16 v1, 0xc

    if-eq p1, v1, :cond_4

    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_6

    goto :goto_1

    .line 166
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    if-eqz p1, :cond_2

    .line 167
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->show(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->showWideCamera()V

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    if-eqz p1, :cond_3

    .line 173
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->restoreDefaultValue()V

    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 179
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    goto :goto_1

    .line 195
    :cond_6
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    if-eqz p1, :cond_9

    .line 196
    :cond_7
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->show(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->showWideCamera()V

    goto :goto_1

    .line 201
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->showWhenCamSwitchEnd()V

    :cond_9
    :goto_1
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 265
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenFormType:I

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateRootViewPadding(IZ)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowUI:Z

    .line 224
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    .line 225
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 227
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 228
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 147
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 153
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setOffsetPadding(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method protected abstract setSettingUIList()V
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSettingUIList] settingUIList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currentCameraId:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setSettingUIList()V

    return-void
.end method

.method protected setZoomWheelShow(I)V
    .locals 1

    const/16 v0, 0x19

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 244
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 246
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract show(Z)V
.end method

.method protected abstract showWhenCamSwitchEnd()V
.end method

.method public abstract showWideCamera()V
.end method

.method public unInit()V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    return-void
.end method

.method public updateItemValue()V
    .locals 0

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public updateRootViewPadding(IZ)V
    .locals 4

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result p1

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 276
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    add-int/2addr v1, v2

    .line 277
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput v0, p2, v3

    const/4 v0, 0x1

    aput v1, p2, v0

    .line 278
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    .line 279
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 280
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 287
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v3, p1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 113
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 235
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mOffsetPadding:I

    return-void
.end method
