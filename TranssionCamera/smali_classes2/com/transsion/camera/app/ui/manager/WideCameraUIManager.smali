.class public Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "WideCameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

.field private mFrontSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

.field private mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field private mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Landroid/content/Context;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    .line 41
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 42
    new-instance p2, Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/ui/FullZoomUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    .line 43
    new-instance p2, Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    .line 44
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method private initSettingUIList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 240
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_macro"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wide_camera"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "front_wide_camera"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_camera_zoom"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "front_crop_fov"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    :cond_1
    new-instance v1, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;Lcom/transsion/camera/app/ui/manager/WideCameraUIManager$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_3

    .line 248
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v1, :cond_4

    .line 252
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_0

    .line 256
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 257
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 258
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 259
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private unInitSettingUIs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 231
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 232
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    .line 234
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public couldShow(Z)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->couldShow(Z)V

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_1

    .line 108
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->couldShow(Z)V

    :cond_1
    return-void
.end method

.method public hide()V
    .locals 3

    .line 70
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide mWideCameraUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hide()V

    :cond_0
    return-void
.end method

.method public hideWideCamera()V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 120
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hideWideCamera()V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 0

    .line 191
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 193
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->notifyCameraOperateActionToUI(I)V

    :cond_0
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hideWideCamera()V

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->hideWideCamera()V

    return-object p1
.end method

.method public onModePanelDistanceChanged(FZ)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 146
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateWideCameraAlpha(FZ)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .locals 0

    .line 175
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 177
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->onOrientationChanged(IZ)V

    :cond_0
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 168
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 1

    .line 301
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IScreenFormControl;->onScreenFormChanged(IZ)V

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IScreenFormControl;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSetupViews()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    .line 152
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 154
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->pause()V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 183
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 185
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setFrontSettingUIList(Ljava/util/List;Ljava/lang/String;)V
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

    .line 265
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setFrontSettingUIList] settingUIList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->unInitSettingUIs(Ljava/util/List;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->initSettingUIList(Ljava/util/List;)V

    .line 268
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontSettingUIList:Ljava/util/List;

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setOffsetPadding(I)V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 275
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setOffsetPadding(I)V

    :cond_0
    return-void
.end method

.method public setSecondDefaultZoomValue(I)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSecondDefaultZoomValue(I)V

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 1

    .line 199
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_2

    .line 201
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p1, :cond_2

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_2
    :goto_0
    return-void
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

    .line 221
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSettingUIList] settingUIList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->unInitSettingUIs(Ljava/util/List;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->initSettingUIList(Ljava/util/List;)V

    .line 224
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSettingUIList:Ljava/util/List;

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 62
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show mWideCameraUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 64
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->show(Z)V

    :cond_0
    return-void
.end method

.method public showWideCamera()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 114
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->showWideCamera()V

    :cond_0
    return-void
.end method

.method public translateWideCamera(IZ)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->translateWideCamera(IZ)V

    :cond_0
    return-void
.end method

.method public translateWideCamera(Z)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 126
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->translateWideCamera(Z)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->unInitSettingUIs(Ljava/util/List;)V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->unInit()V

    return-void
.end method

.method public updateItemValue()V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 138
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateItemValue()V

    :cond_0
    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWideCameraUI preCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nextCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 85
    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateWideCameraAlpha(FZ)V

    .line 88
    :cond_2
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mFrontWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    goto :goto_0

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mBackWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    :goto_0
    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hideWideCamera()V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->mWideCameraUI:Lcom/transsion/camera/app/ui/IWideCameraUI;

    if-eqz p0, :cond_0

    .line 99
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IWideCameraUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
