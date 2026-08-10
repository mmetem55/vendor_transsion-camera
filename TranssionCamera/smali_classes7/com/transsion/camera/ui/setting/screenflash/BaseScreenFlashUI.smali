.class abstract Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "BaseScreenFlashUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$MainHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "on"

.field private static final MIN_SHOW_TIME:J = 0x15eL

.field private static final MSG_HIDE_SCREEN_FLASH:I = 0x2

.field private static final MSG_SHOW_SCREEN_FLASH:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mApertureView:Landroid/view/View;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private final mMainHandler:Landroid/os/Handler;

.field private mShowTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 60
    new-instance v0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$MainHandler;-><init>(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 36
    sget-object v0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->handleUpdateApertureView()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->handleShowScreenFlashView()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->handleHideScreenFlashView()V

    return-void
.end method

.method private handleHideScreenFlashView()V
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "entry view is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_0
    sget-object v1, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "hideScreenFlashView"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->stopFlashingAnimation()V

    return-void
.end method

.method private handleShowScreenFlashView()V
    .locals 3

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "entry view is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    sget-object v1, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "showScreenFlashView"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->startFlashingAnimation()V

    return-void
.end method

.method private handleUpdateApertureView()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mApertureView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-nez v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getCutoutHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mApertureView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startFlashingAnimation()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-nez v0, :cond_0

    .line 165
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mFlashingView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_0
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    :cond_1
    return-void
.end method

.method private stopFlashingAnimation()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-nez v0, :cond_0

    .line 188
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mFlashingView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_0
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c018c

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09006c

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mApertureView:Landroid/view/View;

    const p2, 0x7f0903d7

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p1
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getKey()Ljava/lang/String;
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    .line 89
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "deviceSetting is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, "on"

    return-object p0

    .line 92
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hideScreenFlashView()V
    .locals 6

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 129
    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mShowTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 131
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v4, 0x15e

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    sub-long/2addr v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 116
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "intercept all touch event when screen flash view is visible"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    return-void
.end method

.method protected showScreenFlashView()V
    .locals 3

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mShowTime:J

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 107
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->stopFlashingAnimation()V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    :cond_0
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
