.class public Lcom/transsion/camera/app/SleepCameraActivity;
.super Lcom/transsion/camera/app/PermissionActivity;
.source "SleepCameraActivity.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsSecureCamera:Z

.field private mLastTime:J

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SleepCameraActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/SleepCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mLastTime:J

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mIsSecureCamera:Z

    .line 72
    new-instance v0, Lcom/transsion/camera/app/SleepCameraActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/SleepCameraActivity$2;-><init>(Lcom/transsion/camera/app/SleepCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 21
    sget-object v0, Lcom/transsion/camera/app/SleepCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/SleepCameraActivity;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/SleepCameraActivity;J)J
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mLastTime:J

    return-wide p1
.end method


# virtual methods
.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isSecureCamera"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mIsSecureCamera:Z

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0c01a5

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f090217

    .line 35
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 36
    new-instance v1, Lcom/transsion/camera/app/SleepCameraActivity$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/SleepCameraActivity$1;-><init>(Lcom/transsion/camera/app/SleepCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-boolean v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mIsSecureCamera:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 53
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onDestroyTasks()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mLastTime:J

    .line 67
    iget-boolean v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mIsSecureCamera:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/SleepCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 89
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/QuickActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 102
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/QuickActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onRestartTasks()V
    .locals 2

    .line 60
    sget-object v0, Lcom/transsion/camera/app/SleepCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onRestartTasks"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
