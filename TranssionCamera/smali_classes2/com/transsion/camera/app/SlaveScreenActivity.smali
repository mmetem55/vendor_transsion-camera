.class public Lcom/transsion/camera/app/SlaveScreenActivity;
.super Lcom/transsion/camera/app/PermissionActivity;
.source "SlaveScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;
    }
.end annotation


# static fields
.field private static final ANGLE_360:I = 0x168

.field private static final ANGLE_90:I = 0x5a

.field private static final HALF_UNIT:I = 0x2d

.field private static final ORIENTATION_HYSTERESIS:I = 0x19

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayID:I

.field private mIsDelayForCapture:Z

.field private mIsResumed:Z

.field private mMainScreenRect:Landroid/graphics/Rect;

.field private mMainSurfaceViewRect:Landroid/graphics/Rect;

.field private mMode:I

.field private mOrientation:I

.field private mOrientationListener:Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;

.field private mPreviewRatio:D

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSlaveScreenUI:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

.field private mVIPCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeKeyCode:I

.field private mVolumeKeyEvent:Landroid/view/KeyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlaveScreenActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/SlaveScreenActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mPreviewRatio:D

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMainScreenRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mDisplayID:I

    .line 43
    iput v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMode:I

    const/4 v1, -0x1

    .line 46
    iput v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mOrientation:I

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mIsResumed:Z

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mIsDelayForCapture:Z

    .line 53
    iput v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVolumeKeyCode:I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 186
    new-instance v0, Lcom/transsion/camera/app/SlaveScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/SlaveScreenActivity$1;-><init>(Lcom/transsion/camera/app/SlaveScreenActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Lcom/transsion/camera/app/SlaveScreenActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/SlaveScreenActivity$2;-><init>(Lcom/transsion/camera/app/SlaveScreenActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVIPCaptureReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 35
    sget-object v0, Lcom/transsion/camera/app/SlaveScreenActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/SlaveScreenActivity;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mIsResumed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/SlaveScreenActivity;)D
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mPreviewRatio:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/SlaveScreenActivity;D)D
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mPreviewRatio:D

    return-wide p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/SlaveScreenActivity;)Landroid/graphics/Rect;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMainSurfaceViewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/app/SlaveScreenActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMainSurfaceViewRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/SlaveScreenActivity;)Landroid/graphics/Rect;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMainScreenRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/SlaveScreenActivity;)Lcom/transsion/camera/app/ui/SlaveScreenAppUI;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mSlaveScreenUI:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/SlaveScreenActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mOrientation:I

    return p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/app/SlaveScreenActivity;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$700(II)I
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lcom/transsion/camera/app/SlaveScreenActivity;->roundOrientation(II)I

    move-result p0

    return p0
.end method

.method private static angleOfUnit90(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x2d

    .line 319
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method private configSystemUI()V
    .locals 2

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1307

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    .line 277
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 281
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private static isAngleChanged(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p0, p1

    .line 311
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rsub-int p1, p0, 0x168

    .line 312
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p1, 0x46

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNeedFingerprint()Z
    .locals 4

    .line 373
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_take_photo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 374
    sget-object v0, Lcom/transsion/camera/app/SlaveScreenActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedFingerprint, take photo value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private processSlaveScreenIntent(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "key_preview_ratio"

    .line 257
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mPreviewRatio:D

    const-string v1, "key_display_id"

    .line 258
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mDisplayID:I

    const-string v1, "key_mode"

    .line 259
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMode:I

    const-string v1, "key_data_list"

    .line 260
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mDataList:Ljava/util/ArrayList;

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMainSurfaceViewRect:Landroid/graphics/Rect;

    .line 263
    sget-object p1, Lcom/transsion/camera/app/SlaveScreenActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processSlaveScreenIntent, ratio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mPreviewRatio:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", display ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mDisplayID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", main surface view rect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMainSurfaceViewRect:Landroid/graphics/Rect;

    .line 264
    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 263
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static roundOrientation(II)I
    .locals 1

    .line 323
    invoke-static {p0, p1}, Lcom/transsion/camera/app/SlaveScreenActivity;->isAngleChanged(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {p0}, Lcom/transsion/camera/app/SlaveScreenActivity;->angleOfUnit90(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private sendBroadcastWithFingerprint(IZLandroid/view/KeyEvent;)V
    .locals 3

    .line 352
    sget-object v0, Lcom/transsion/camera/app/SlaveScreenActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastWithFingerprint, keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "transsion.action.VIP_FINGERPRINT_KEY"

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_finger_print_code"

    .line 355
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "key_finger_print_end"

    .line 356
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "key_finger_print_event"

    .line 357
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBroadcastWithVolume(IZLandroid/view/KeyEvent;)V
    .locals 4

    .line 362
    sget-object v0, Lcom/transsion/camera/app/SlaveScreenActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastWithVolume, keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 363
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "transsion.action.VIP_VOLUME_KEY"

    .line 364
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_vip_volume_code"

    .line 365
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "key_vip_volume_end"

    .line 366
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "key_vip_volume_event"

    .line 367
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 368
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyDown, keyCode:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", event.getDownTime():"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setPreferredRefreshRate(I)V
    .locals 9

    .line 331
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 337
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    .line 338
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 339
    sget-object v4, Lcom/transsion/camera/app/SlaveScreenActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferredRefreshRate, mode.getModeId():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mode.getRefreshRate():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    const/high16 v6, 0x42700000    # 60.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 342
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredRefreshRate, preferredDisplayModeId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_1
    :goto_1
    sget-object v0, Lcom/transsion/camera/app/SlaveScreenActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setPreferredRefreshRate end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 9

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/SlaveScreenActivity;->configSystemUI()V

    .line 59
    new-instance p1, Lcom/transsion/camera/app/ui/ScreenManager;

    sget v0, Lcom/transsion/camera/app/ui/ScreenManager;->ACTIVITY_TYPE_SLAVE:I

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/ScreenManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const p1, 0x7f0c01a3

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 63
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 64
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMainScreenRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/SlaveScreenActivity;->processSlaveScreenIntent(Landroid/content/Intent;)V

    .line 69
    iget p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mDisplayID:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/SlaveScreenActivity;->setPreferredRefreshRate(I)V

    .line 71
    new-instance v0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    iget-object p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mSlaveScreenUI:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    const p1, 0x7f090215

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMode:I

    iget v5, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mDisplayID:I

    iget-object v6, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mDataList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMainScreenRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMainSurfaceViewRect:Landroid/graphics/Rect;

    move-object v1, p0

    .line 72
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->init(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;IILjava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 75
    new-instance p1, Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;

    invoke-direct {p1, p0, p0}, Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;-><init>(Lcom/transsion/camera/app/SlaveScreenActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mOrientationListener:Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;

    .line 77
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "transsion.action.VIP_CAPTURE_RATIO"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "transsion.action.VIP_CAPTURE_PROCESS_COVER"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "transsion.action.VIP_CAPTURE_SHOT"

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "transsion.action.VIP_RUN_SLAVE_PREVIEW"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "transsion.action.VIP_CAPTURE_SELF_TIMER"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "transsion.action.VIP_VIP_FINISH_ACTIVITY"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "transsion.action.SCREEN_FORM_TYPE"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVIPCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroyTasks()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mSlaveScreenUI:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->unInit()V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVIPCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    sget-object p0, Lcom/transsion/camera/app/SlaveScreenActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onDestroyTasks"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 128
    sget-object v0, Lcom/transsion/camera/app/SlaveScreenActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_5

    const/16 v1, 0x19

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8d

    if-eq p1, v1, :cond_0

    const/16 v1, 0x12a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x162

    if-eq p1, v1, :cond_0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/QuickActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVolumeKeyCode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVolumeKeyCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mIsDelayForCapture:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mIsDelayForCapture:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/app/SlaveScreenActivity;->isNeedFingerprint()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 142
    iget-boolean v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mIsDelayForCapture:Z

    if-eqz v0, :cond_2

    .line 143
    iget p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVolumeKeyCode:I

    if-eq p1, v1, :cond_1

    .line 144
    iget-object p2, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    invoke-direct {p0, p1, v3, p2}, Lcom/transsion/camera/app/SlaveScreenActivity;->sendBroadcastWithVolume(IZLandroid/view/KeyEvent;)V

    :cond_1
    return v2

    .line 148
    :cond_2
    iput-boolean v2, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mIsDelayForCapture:Z

    .line 149
    invoke-direct {p0, p1, v3, p2}, Lcom/transsion/camera/app/SlaveScreenActivity;->sendBroadcastWithFingerprint(IZLandroid/view/KeyEvent;)V

    goto :goto_0

    .line 150
    :cond_3
    iget p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVolumeKeyCode:I

    if-eq p1, v1, :cond_4

    .line 151
    iget-object p2, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    invoke-direct {p0, p1, v3, p2}, Lcom/transsion/camera/app/SlaveScreenActivity;->sendBroadcastWithVolume(IZLandroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return v2

    .line 132
    :cond_5
    iput p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVolumeKeyCode:I

    .line 133
    iput-object p2, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 134
    invoke-direct {p0, p1, v3, p2}, Lcom/transsion/camera/app/SlaveScreenActivity;->sendBroadcastWithVolume(IZLandroid/view/KeyEvent;)V

    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x162

    if-eq p1, v0, :cond_0

    .line 183
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/QuickActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/SlaveScreenActivity;->isNeedFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mIsDelayForCapture:Z

    .line 176
    invoke-direct {p0, p1, v1, p2}, Lcom/transsion/camera/app/SlaveScreenActivity;->sendBroadcastWithFingerprint(IZLandroid/view/KeyEvent;)V

    :cond_1
    return v1

    :cond_2
    const/4 v0, -0x1

    .line 166
    iput v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVolumeKeyCode:I

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 168
    invoke-direct {p0, p1, v1, p2}, Lcom/transsion/camera/app/SlaveScreenActivity;->sendBroadcastWithVolume(IZLandroid/view/KeyEvent;)V

    return v1
.end method

.method protected onPauseTasks()V
    .locals 1

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mIsResumed:Z

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mSlaveScreenUI:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->pause()V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mOrientationListener:Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mOrientation:I

    return-void
.end method

.method protected onRestartTasks()V
    .locals 0

    return-void
.end method

.method protected onResumeTasks()V
    .locals 3

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mIsResumed:Z

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mSlaveScreenUI:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->resume()V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mSlaveScreenUI:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMainScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mMainSurfaceViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->setMainScreenSurfaceViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mSlaveScreenUI:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mPreviewRatio:D

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->setPreviewSize(D)V

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity;->mOrientationListener:Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method protected onStopTasks()V
    .locals 1

    .line 115
    sget-object p0, Lcom/transsion/camera/app/SlaveScreenActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onStopTasks"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
