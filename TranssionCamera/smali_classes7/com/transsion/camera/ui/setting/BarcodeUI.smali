.class public Lcom/transsion/camera/ui/setting/BarcodeUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "BarcodeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;,
        Lcom/transsion/camera/ui/setting/BarcodeUI$BarcodeResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final BARCODE_VIEW_HIDE:I = 0x1

.field private static final BARCODE_VIEW_SHOW:I = 0x2

.field private static final MSG_BARCODE_RESULT:I = 0x64

.field private static final MSG_BARCODE_VIEW_CLOSE:I = 0x65

.field private static final MSG_POPWINDOW_CLOSE:I = 0x66

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private bottom:F

.field private entry:Landroid/view/View;

.field private imageViewLB:Landroid/widget/ImageView;

.field private imageViewLT:Landroid/widget/ImageView;

.field private imageViewRB:Landroid/widget/ImageView;

.field private imageViewRT:Landroid/widget/ImageView;

.field private mAnimatiorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBarCodeActivityResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mBarcodeView:Landroid/view/View;

.field private mCanShowPopUpWindow:Z

.field private mCanUpdateBarcodeResult:Z

.field private mCodeResult:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCurrentIsNightMode:Z

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDpi:F

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitUiMode:I

.field private mInterpolatorDown:Landroid/view/animation/PathInterpolator;

.field private mInterpolatorMove:Landroid/view/animation/PathInterpolator;

.field private mInterpolatorUp:Landroid/view/animation/PathInterpolator;

.field private mLastQRCodeRectf:Landroid/graphics/RectF;

.field private mLastQRCodeResult:Ljava/lang/String;

.field private mMarinBottom:I

.field private mMarinTop:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowNeedHide:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mQRCodeRectf:Landroid/graphics/RectF;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSettingHide:Z

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mUIHandler:Landroid/os/Handler;

.field private popAnimateEnd:Z

.field private qrCodeResult:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BarcodeUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 5

    .line 132
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const-string v0, ""

    .line 92
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 94
    iput v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mDpi:F

    const/4 v1, 0x0

    .line 116
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->popAnimateEnd:Z

    const/4 v2, 0x1

    .line 117
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    .line 118
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingHide:Z

    .line 119
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCurrentIsNightMode:Z

    .line 120
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindowNeedHide:Z

    .line 121
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanShowPopUpWindow:Z

    .line 127
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorDown:Landroid/view/animation/PathInterpolator;

    .line 128
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorUp:Landroid/view/animation/PathInterpolator;

    .line 129
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v4, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorMove:Landroid/view/animation/PathInterpolator;

    .line 247
    new-instance v0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 323
    new-instance v0, Lcom/transsion/camera/ui/setting/BarcodeUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/BarcodeUI$1;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mAnimatiorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 133
    sget-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "BarcodeUI"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/transsion/camera/ui/setting/BarcodeSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/BarcodeSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 135
    new-instance p1, Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;

    invoke-direct {p1, p0, p0, v1}, Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorDown:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/view/View;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mAnimatiorListener:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorUp:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 75
    sget-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/ui/setting/BarcodeUI;[Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->doUpdateBarcodeResult([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/ui/setting/BarcodeUI;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->doBarcodeViewClose()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/BarcodeUI;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->hideView()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/BarcodeUI;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/ui/setting/BarcodeUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/BarcodeUI;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->popAnimateEnd:Z

    return p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/ui/setting/BarcodeUI;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->popAnimateEnd:Z

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/BarcodeUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarCodeActivityResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private createNotification(Ljava/lang/String;)V
    .locals 6

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 535
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    const-string v3, "channel_1"

    invoke-direct {v1, v3, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 536
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 539
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    const-class v4, Lcom/transsion/camera/ui/setting/CodeResultActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "qrCodeResult"

    .line 540
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1f

    const/4 v5, 0x0

    if-lt v2, v4, :cond_0

    .line 543
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    const/high16 v4, 0x2000000

    invoke-static {v2, v5, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0

    .line 545
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v2, v5, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 547
    :goto_0
    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 548
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v5, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 550
    :cond_1
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f100098

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 552
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const v1, 0x7f0807f0

    .line 554
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 555
    invoke-virtual {p0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 556
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 557
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 558
    invoke-virtual {v0, v4, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private doBarcodeViewClose()V
    .locals 9

    .line 681
    sget-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doBarcodeViewClose"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 682
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->hideView()V

    const/4 v0, 0x1

    .line 683
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindowNeedHide:Z

    .line 684
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    if-nez v0, :cond_0

    return-void

    .line 687
    :cond_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->bottom:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    .line 688
    iget v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinBottom:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    int-to-float v2, v2

    sub-float v3, v0, v2

    .line 689
    iget v0, v1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    .line 690
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    invoke-static/range {v3 .. v8}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->endBoxAnimation(FFLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    :cond_1
    const/4 p0, 0x2

    .line 693
    sput p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mIsStartAnimation:I

    const/4 p0, 0x0

    .line 694
    sput-boolean p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mAlaphChange:Z

    return-void
.end method

.method private doUpdateBarcodeResult([Ljava/lang/String;)V
    .locals 9

    .line 595
    sget-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateBarcodeResult : mCanUpdateBarcodeResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 596
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    .line 600
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCurrentIsNightMode:Z

    const/4 v2, 0x0

    if-eq v1, v0, :cond_2

    .line 601
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCurrentIsNightMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0058

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0c00d7

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    .line 607
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->initView()V

    .line 610
    :cond_2
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->qrCodeResult:Ljava/lang/String;

    const/4 v0, 0x5

    .line 612
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x6

    .line 613
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 616
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x2

    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/4 v7, 0x3

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/4 v8, 0x4

    aget-object p1, p1, v8

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-direct {v2, v4, v6, v7, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    .line 617
    iget p1, v2, Landroid/graphics/RectF;->left:F

    div-float/2addr p1, v1

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    int-to-float v4, v4

    mul-float/2addr p1, v4

    .line 618
    iget v4, v2, Landroid/graphics/RectF;->top:F

    div-float/2addr v4, v0

    iget v6, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    .line 619
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    int-to-float v1, v1

    mul-float/2addr v2, v1

    add-float/2addr v2, p1

    .line 620
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v0

    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    iput v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->bottom:F

    .line 621
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinTop:I

    int-to-float v6, v1

    add-float/2addr v4, v6

    iget v6, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->bottom:F

    int-to-float v1, v1

    add-float/2addr v6, v1

    invoke-direct {v0, p1, v4, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    .line 623
    iget p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->bottom:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinBottom:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    invoke-static {v0, p1, v1, v2, v4}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->setQRCodeRectf(Landroid/graphics/RectF;FIII)V

    .line 625
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_3

    .line 626
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 627
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 628
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 629
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 632
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v0, v6

    if-gez p1, :cond_4

    return-void

    .line 636
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanShowPopUpWindow:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->qrCodeResult:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->qrCodeResult:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 637
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->qrCodeResult:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    .line 638
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->startBoxAnimation(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 639
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->qrCodeResult:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->doUpdateNotation(Ljava/lang/String;)V

    goto :goto_1

    .line 641
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->qrCodeResult:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    .line 644
    :goto_1
    sget p1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mIsStartAnimation:I

    if-ne p1, v5, :cond_6

    .line 645
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 646
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 647
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 648
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 649
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->startBoxAnimation(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 652
    :cond_6
    sget p1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mIsStartAnimation:I

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeRectf:Landroid/graphics/RectF;

    if-eqz p1, :cond_7

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v0, v1, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_7

    .line 653
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->showView()V

    .line 654
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x96

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorMove:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 655
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->bottom:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinBottom:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorMove:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 656
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorMove:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 657
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->bottom:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinBottom:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorMove:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 660
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeRectf:Landroid/graphics/RectF;

    :cond_8
    :goto_2
    return-void
.end method

.method private doUpdateBarcodeView(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->showView()V

    goto :goto_0

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->hideView()V

    :goto_0
    return-void
.end method

.method private doUpdateNotation(Ljava/lang/String;)V
    .locals 5

    .line 665
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 668
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 671
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 672
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    const/16 v2, 0x33

    iget v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mDpi:F

    float-to-int v4, v3

    mul-int/lit8 v4, v4, 0x4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x34

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCodeResult:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->createNotification(Ljava/lang/String;)V

    .line 677
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void
.end method

.method private hideView()V
    .locals 2

    .line 290
    sget-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hide view"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 292
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 350
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 352
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    iget v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mDpi:F

    float-to-int v2, v2

    mul-int/lit16 v2, v2, 0x160

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    .line 353
    invoke-static {v0, v1}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f1101d6

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    const v1, 0x7f0903bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCodeResult:Landroid/widget/TextView;

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->entry:Landroid/view/View;

    const v1, 0x7f090224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->entry:Landroid/view/View;

    const v1, 0x7f090222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->entry:Landroid/view/View;

    const v1, 0x7f090227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->entry:Landroid/view/View;

    const v1, 0x7f090226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/transsion/camera/ui/setting/BarcodeUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/BarcodeUI$2;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 462
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private showView()V
    .locals 2

    .line 297
    sget-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "show view"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 145
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInflater:Landroid/view/LayoutInflater;

    .line 147
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    .line 148
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCurrentIsNightMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0058

    .line 150
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    goto :goto_0

    :cond_0
    const v0, 0x7f0c00d7

    .line 152
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mDpi:F

    const v0, 0x7f0c004e

    .line 156
    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->entry:Landroid/view/View;

    const p2, 0x7f090229

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    const-string p1, ""

    .line 158
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindowNeedHide:Z

    .line 160
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->initView()V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->entry:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 8

    .line 467
    sget-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x65

    const/4 v1, 0x0

    const/16 v2, 0x66

    if-eqz p1, :cond_8

    const-string v3, ""

    const/4 v4, 0x1

    if-eq p1, v4, :cond_7

    const/4 v5, 0x2

    if-eq p1, v5, :cond_8

    const/4 v5, 0x3

    if-eq p1, v5, :cond_7

    const/16 v5, 0xd

    if-eq p1, v5, :cond_6

    const/16 v5, 0x1b

    const-string v6, "key_setting_fragment_notify_ui"

    if-eq p1, v5, :cond_5

    const/16 v5, 0x1f

    const-string v7, "end"

    if-eq p1, v5, :cond_3

    const/16 v5, 0x23

    if-eq p1, v5, :cond_6

    const/16 v5, 0x4d

    if-eq p1, v5, :cond_5

    const/16 v5, 0x4e

    if-eq p1, v5, :cond_1

    const/16 v5, 0x55

    if-eq p1, v5, :cond_0

    const/16 v5, 0x56

    if-eq p1, v5, :cond_4

    const/16 v5, 0x69

    if-eq p1, v5, :cond_0

    const/16 v5, 0x6a

    if-eq p1, v5, :cond_5

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 513
    :cond_0
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingHide:Z

    .line 514
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->hideView()V

    .line 515
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 518
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    goto :goto_0

    .line 503
    :cond_1
    :pswitch_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingHide:Z

    if-eqz p1, :cond_2

    return-void

    .line 506
    :cond_2
    iput-object v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    .line 507
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    invoke-virtual {p0, v6, v7}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 522
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    invoke-virtual {p1, v6, v7}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingHide:Z

    .line 525
    iput-object v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    .line 526
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    goto :goto_0

    .line 492
    :cond_5
    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->hideView()V

    .line 493
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 494
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 496
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "begin"

    invoke-virtual {p0, v6, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 484
    :cond_7
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    .line 485
    iput-object v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    goto :goto_0

    .line 476
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 478
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->hideView()V

    .line 479
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 211
    new-instance v0, Lcom/transsion/camera/ui/setting/BarcodeUI$BarcodeResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/BarcodeUI$BarcodeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 212
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 214
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
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
    .locals 1

    .line 235
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string v0, "key_setting_fragment_notify_ui"

    .line 237
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "action_barcode_activity_start"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarCodeActivityResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_super_definition"

    .line 241
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->registerKeyToMonitor(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_0
    sget-object p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setupEntryView()V
    .locals 1

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanShowPopUpWindow:Z

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 168
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 305
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 306
    sget-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanShowPopUpWindow:Z

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 310
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_super_definition"

    .line 318
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    .line 320
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->doUpdateBarcodeView(I)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 174
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindowNeedHide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 178
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    .line 179
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    .line 180
    iput p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinTop:I

    .line 181
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinTop:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinBottom:I

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p1

    .line 183
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCurrentIsNightMode:Z

    if-eq v0, p1, :cond_2

    .line 184
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCurrentIsNightMode:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0058

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    goto :goto_0

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00d7

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    .line 190
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->initView()V

    :cond_2
    return-void
.end method
