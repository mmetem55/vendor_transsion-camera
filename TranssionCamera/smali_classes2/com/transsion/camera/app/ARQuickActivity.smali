.class public abstract Lcom/transsion/camera/app/ARQuickActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ARQuickActivity.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sResumeActivityNumber:I


# instance fields
.field private mIsPersistent:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainHandler:Landroid/os/Handler;

.field private final mOnResumeTasks:Ljava/lang/Runnable;

.field private final mOnStopTasks:Ljava/lang/Runnable;

.field private mSkippedFirstOnResume:Z

.field protected mStartupOnCreate:Z

.field protected mSuperResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ARQuickActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ARQuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 196
    sput v0, Lcom/transsion/camera/app/ARQuickActivity;->sResumeActivityNumber:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mSkippedFirstOnResume:Z

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mStartupOnCreate:Z

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/transsion/camera/app/ARQuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mIsPersistent:Z

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mSuperResumed:Z

    .line 111
    new-instance v0, Lcom/transsion/camera/app/ARQuickActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ARQuickActivity$1;-><init>(Lcom/transsion/camera/app/ARQuickActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Lcom/transsion/camera/app/ARQuickActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ARQuickActivity$2;-><init>(Lcom/transsion/camera/app/ARQuickActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ARQuickActivity;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mSkippedFirstOnResume:Z

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/ARQuickActivity;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/transsion/camera/app/ARQuickActivity;->mSkippedFirstOnResume:Z

    return p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 65
    sget-object v0, Lcom/transsion/camera/app/ARQuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private static accumulateActiveActivity()V
    .locals 1

    .line 199
    sget v0, Lcom/transsion/camera/app/ARQuickActivity;->sResumeActivityNumber:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/camera/app/ARQuickActivity;->sResumeActivityNumber:I

    return-void
.end method

.method private static decrementActiveActivity()V
    .locals 1

    .line 203
    sget v0, Lcom/transsion/camera/app/ARQuickActivity;->sResumeActivityNumber:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/transsion/camera/app/ARQuickActivity;->sResumeActivityNumber:I

    return-void
.end method

.method private static hasActiveActivity()Z
    .locals 1

    .line 207
    sget v0, Lcom/transsion/camera/app/ARQuickActivity;->sResumeActivityNumber:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLockScreenStart()Z
    .locals 4

    .line 406
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.systemui.camera_launch_source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    .line 409
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lockscreen_affordance"

    .line 410
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "volume_double_tap"

    .line 411
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

    .line 343
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extras.IS_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private logLifecycle(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string p2, "START"

    goto :goto_0

    :cond_0
    const-string p2, "END"

    .line 331
    :goto_0
    sget-object v0, Lcom/transsion/camera/app/ARQuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
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

    .line 331
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected isKeyguardLocked()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/transsion/camera/app/ARQuickActivity;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 339
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

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

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/transsion/camera/app/ARQuickActivity;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 350
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 318
    sget-object v0, Lcom/transsion/camera/app/ARQuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "onCreate"

    const/4 v1, 0x1

    .line 163
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 164
    iput-boolean v1, p0, Lcom/transsion/camera/app/ARQuickActivity;->mStartupOnCreate:Z

    .line 165
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_persistent"

    invoke-static {p0, v3, v2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ARQuickActivity;->mIsPersistent:Z

    .line 167
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ARQuickActivity;->mMainHandler:Landroid/os/Handler;

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 169
    sget p1, Lcom/transsion/camera/app/common/R$string;->no_support_split_screen:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p1, "onCreate need to be finished due to MultiWindow Mode"

    .line 172
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x400

    .line 177
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 178
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    invoke-virtual {v2, v1}, Landroid/view/Window;->setColorMode(I)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/Window;->setColorMode(I)V

    .line 183
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ARQuickActivity;->onPermissionCreateTasks(Landroid/os/Bundle;)V

    .line 184
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x1

    .line 310
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 311
    invoke-virtual {p0}, Lcom/transsion/camera/app/ARQuickActivity;->onPermissionDestroyTasks()V

    .line 312
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    const/4 v1, 0x0

    .line 313
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 140
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 148
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "onNewIntent"

    const/4 v1, 0x1

    .line 153
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 154
    sget-object v1, Lcom/transsion/camera/app/ARQuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 155
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 156
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ARQuickActivity;->onNewIntentTasks(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 158
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

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

    .line 248
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    .line 249
    iput-boolean v1, p0, Lcom/transsion/camera/app/ARQuickActivity;->mSuperResumed:Z

    .line 250
    iget-object v2, p0, Lcom/transsion/camera/app/ARQuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/ARQuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 255
    iget-boolean v2, p0, Lcom/transsion/camera/app/ARQuickActivity;->mSkippedFirstOnResume:Z

    if-nez v2, :cond_0

    .line 256
    sget-object v2, Lcom/transsion/camera/app/ARQuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "onPause --> onPauseTasks()"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/transsion/camera/app/ARQuickActivity;->onPermissionPauseTasks()V

    .line 259
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 260
    iput-boolean v1, p0, Lcom/transsion/camera/app/ARQuickActivity;->mStartupOnCreate:Z

    .line 261
    invoke-static {}, Lcom/transsion/camera/app/ARQuickActivity;->decrementActiveActivity()V

    .line 262
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

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

    .line 301
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 303
    invoke-virtual {p0}, Lcom/transsion/camera/app/ARQuickActivity;->onPermissionRestartTasks()V

    const/4 v1, 0x0

    .line 305
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onResume()V
    .locals 7

    const-string v0, "onResume"

    const/4 v1, 0x1

    .line 212
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 213
    iput-boolean v1, p0, Lcom/transsion/camera/app/ARQuickActivity;->mSuperResumed:Z

    .line 224
    sget-object v2, Lcom/transsion/camera/app/ARQuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume(): isKeyguardLocked() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ARQuickActivity;->isKeyguardLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/transsion/camera/app/ARQuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/transsion/camera/app/ARQuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-object v3, p0, Lcom/transsion/camera/app/ARQuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/transsion/camera/app/ARQuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    invoke-direct {p0}, Lcom/transsion/camera/app/ARQuickActivity;->isLockScreenStart()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ARQuickActivity;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/app/ARQuickActivity;->isShortcut()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/transsion/camera/app/ARQuickActivity;->hasActiveActivity()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    iget-boolean v3, p0, Lcom/transsion/camera/app/ARQuickActivity;->mSkippedFirstOnResume:Z

    if-nez v3, :cond_4

    .line 229
    iput-boolean v1, p0, Lcom/transsion/camera/app/ARQuickActivity;->mSkippedFirstOnResume:Z

    .line 230
    invoke-direct {p0}, Lcom/transsion/camera/app/ARQuickActivity;->isLockScreenStart()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/camera/app/ARQuickActivity;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/camera/app/ARQuickActivity;->isShortcut()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0xf

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v5, 0x1e

    .line 232
    :goto_1
    invoke-static {}, Lcom/transsion/camera/app/ARQuickActivity;->hasActiveActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v5, 0x0

    .line 233
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

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/app/ARQuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/camera/app/ARQuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    const-string v1, "onResume --> onResumeTasks()"

    .line 236
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    iput-boolean v4, p0, Lcom/transsion/camera/app/ARQuickActivity;->mSkippedFirstOnResume:Z

    .line 239
    invoke-virtual {p0}, Lcom/transsion/camera/app/ARQuickActivity;->onPermissionResumeTasks()V

    .line 241
    :goto_2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 242
    invoke-static {}, Lcom/transsion/camera/app/ARQuickActivity;->accumulateActiveActivity()V

    .line 243
    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    const-string v0, "onStart"

    const/4 v1, 0x1

    .line 190
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 191
    invoke-virtual {p0}, Lcom/transsion/camera/app/ARQuickActivity;->onPermissionStartTasks()V

    .line 192
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onStop()V
    .locals 7

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/transsion/camera/app/ARQuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "changing configurations"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const-string v1, "onStop"

    .line 270
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 271
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.systemui.camera_launch_source"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 274
    sget-object v4, Lcom/transsion/camera/app/ARQuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStop -->action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    .line 276
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    const-string v0, "lockscreen_affordance"

    .line 277
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "volume_double_tap"

    .line 278
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-ne v0, v3, :cond_2

    :cond_1
    const-string v0, "onStop() --> postDelayed(onStopTasks,300)"

    .line 284
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/ARQuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/camera/app/ARQuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v0, "onStop --> onStopTasks()"

    .line 290
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    iput-boolean v5, p0, Lcom/transsion/camera/app/ARQuickActivity;->mSkippedFirstOnResume:Z

    .line 292
    invoke-virtual {p0}, Lcom/transsion/camera/app/ARQuickActivity;->onPermissionStopTasks()V

    .line 295
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 296
    invoke-direct {p0, v1, v5}, Lcom/transsion/camera/app/ARQuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 326
    sget-object p0, Lcom/transsion/camera/app/ARQuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 354
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method
