.class public abstract Lcom/transsion/camera/app/QuickActivity;
.super Landroid/app/Activity;
.source "QuickActivity.java"


# static fields
.field private static final ON_RESUME_DELAY_NON_SECURE_MILLIS:J = 0xfL

.field private static final ON_RESUME_DELAY_SECURE_MILLIS:J = 0x1eL

.field private static final ON_STOP_DELAY_MILLIS:J = 0x12cL

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sResumeActivityNumber:I


# instance fields
.field private mIsPersistent:Z

.field private mIsTopResumedActivity:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainHandler:Landroid/os/Handler;

.field private final mOnResumeTasks:Ljava/lang/Runnable;

.field private final mOnStopTasks:Ljava/lang/Runnable;

.field private mSkippedFirstOnResume:Z

.field protected mStartupOnCreate:Z

.field protected mSuperResumed:Z


# direct methods
.method public static synthetic $r8$lambda$F-C_G611cKTpjtsmS2pVV-DM9KA(Landroid/window/SplashScreenView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/app/QuickActivity;->lambda$onCreate$0(Landroid/window/SplashScreenView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QuickActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 221
    sput v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    .line 97
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mStartupOnCreate:Z

    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mIsPersistent:Z

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mIsTopResumedActivity:Z

    .line 115
    new-instance v0, Lcom/transsion/camera/app/QuickActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/QuickActivity$1;-><init>(Lcom/transsion/camera/app/QuickActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Lcom/transsion/camera/app/QuickActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/QuickActivity$2;-><init>(Lcom/transsion/camera/app/QuickActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/QuickActivity;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/QuickActivity;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    return p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 67
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private static accumulateActiveActivity()V
    .locals 1

    .line 224
    sget v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    return-void
.end method

.method private static decrementActiveActivity()V
    .locals 1

    .line 228
    sget v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    return-void
.end method

.method private static hasActiveActivity()Z
    .locals 1

    .line 232
    sget v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLockScreenStart()Z
    .locals 5

    .line 447
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.systemui.camera_launch_source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 450
    sget-object v2, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLockScreenStart source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sourceInt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 451
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lockscreen_affordance"

    .line 452
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "volume_double_tap"

    .line 453
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isShortcut()Z
    .locals 2

    .line 380
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extras.IS_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onCreate$0(Landroid/window/SplashScreenView;)V
    .locals 2

    .line 179
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] onSplashScreenExit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "onSplashScreenExit"

    .line 180
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroid/window/SplashScreenView;->remove()V

    .line 182
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private logLifecycle(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string p2, "START"

    goto :goto_0

    :cond_0
    const-string p2, "END"

    .line 368
    :goto_0
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 368
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected isKeyguardLocked()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 376
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isKeyguardSecure()Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 387
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final isPersistent()Z
    .locals 0

    .line 443
    iget-boolean p0, p0, Lcom/transsion/camera/app/QuickActivity;->mIsPersistent:Z

    return p0
.end method

.method public isTopResumedActivity()Z
    .locals 0

    .line 332
    iget-boolean p0, p0, Lcom/transsion/camera/app/QuickActivity;->mIsTopResumedActivity:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 354
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "super onConfigurationChanged, densityDpi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenWidthDp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenHeightDp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 356
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->setDefaultDisplay(Landroid/content/Context;)V

    .line 357
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "onCreate"

    const/4 v1, 0x1

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 176
    iput-boolean v1, p0, Lcom/transsion/camera/app/QuickActivity;->mStartupOnCreate:Z

    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getSplashScreen()Landroid/window/SplashScreen;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/QuickActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/transsion/camera/app/QuickActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Landroid/window/SplashScreen;->setOnExitAnimationListener(Landroid/window/SplashScreen$OnExitAnimationListener;)V

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_persistent"

    invoke-static {p0, v3, v2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/QuickActivity;->mIsPersistent:Z

    .line 185
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    .line 186
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->setDefaultDisplay(Landroid/content/Context;)V

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    .line 188
    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 189
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 190
    invoke-virtual {v2, v1}, Landroid/view/Window;->setColorMode(I)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/Window;->setColorMode(I)V

    .line 194
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onPermissionCreateTasks(Landroid/os/Bundle;)V

    .line 195
    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x1

    .line 346
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 347
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionDestroyTasks()V

    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v1, 0x0

    .line 349
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "onNewIntent"

    const/4 v1, 0x1

    .line 165
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 166
    sget-object v1, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onNewIntentTasks(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 170
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected final onPause()V
    .locals 4

    const-string v0, "onPause"

    const/4 v1, 0x1

    .line 273
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    .line 274
    iput-boolean v1, p0, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    .line 275
    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    iget-boolean v2, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    if-nez v2, :cond_0

    .line 281
    sget-object v2, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "onPause --> onPauseTasks()"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionPauseTasks()V

    .line 284
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 285
    iput-boolean v1, p0, Lcom/transsion/camera/app/QuickActivity;->mStartupOnCreate:Z

    .line 286
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->decrementActiveActivity()V

    .line 287
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onPermissionCreateTasks(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onPermissionDestroyTasks()V
    .locals 0

    return-void
.end method

.method protected onPermissionPauseTasks()V
    .locals 0

    return-void
.end method

.method protected onPermissionRestartTasks()V
    .locals 0

    return-void
.end method

.method protected onPermissionResumeTasks()V
    .locals 0

    return-void
.end method

.method protected onPermissionStartTasks()V
    .locals 0

    return-void
.end method

.method protected onPermissionStopTasks()V
    .locals 0

    return-void
.end method

.method protected final onRestart()V
    .locals 2

    const-string v0, "onRestart"

    const/4 v1, 0x1

    .line 337
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 339
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionRestartTasks()V

    const/4 v1, 0x0

    .line 341
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onResume()V
    .locals 7

    const-string v0, "onResume"

    const/4 v1, 0x1

    .line 237
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 238
    iput-boolean v1, p0, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    .line 239
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->setDefaultDisplay(Landroid/content/Context;)V

    .line 249
    sget-object v2, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume(): isKeyguardLocked() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/transsion/camera/app/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/transsion/camera/app/QuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->isLockScreenStart()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->isShortcut()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->hasActiveActivity()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    iget-boolean v3, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    if-nez v3, :cond_4

    .line 254
    iput-boolean v1, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    .line 255
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->isLockScreenStart()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->isShortcut()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0xf

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v5, 0x1e

    .line 257
    :goto_1
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->hasActiveActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v5, 0x0

    .line 258
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() --> postDelayed(mOnResumeTasks,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    const-string v1, "onResume --> onResumeTasks()"

    .line 261
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    iput-boolean v4, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    .line 264
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionResumeTasks()V

    .line 266
    :goto_2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 267
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->accumulateActiveActivity()V

    .line 268
    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onStart()V
    .locals 4

    const-string v0, "onStart"

    const/4 v1, 0x1

    .line 200
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 201
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionStartTasks()V

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 204
    sget v0, Lcom/transsion/camera/app/common/R$string;->no_support_split_screen:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "onStart need to be finished due to MultiWindow Mode"

    .line 207
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->isThunderbackWindow(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    sget v0, Lcom/transsion/camera/app/common/R$string;->no_support_thunder_Window:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "onStart need to be finished due to ThunderbackWindow"

    .line 215
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void

    .line 218
    :cond_1
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onStop()V
    .locals 7

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "changing configurations"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const-string v1, "onStop"

    .line 295
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.systemui.camera_launch_source"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 299
    sget-object v4, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStop -->action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sourceInt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    .line 301
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    const-string v0, "lockscreen_affordance"

    .line 302
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "volume_double_tap"

    .line 303
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-ne v0, v3, :cond_2

    :cond_1
    const-string v0, "onStop() --> postDelayed(onStopTasks,300)"

    .line 309
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v0, "onStop --> onStopTasks()"

    .line 315
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    iput-boolean v5, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    .line 317
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionStopTasks()V

    .line 320
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 321
    invoke-direct {p0, v1, v5}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 0

    .line 326
    invoke-super {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    .line 327
    iput-boolean p1, p0, Lcom/transsion/camera/app/QuickActivity;->mIsTopResumedActivity:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 362
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 363
    sget-object p0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public provideKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    const-string v0, "keyguard"

    .line 391
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method
