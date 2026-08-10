.class public Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;
.super Lcom/transsion/camera/app/PermissionActivity;
.source "SlaveScreenSelfHintActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;
    }
.end annotation


# static fields
.field private static final ANGLE_360:I = 0x168

.field private static final ANGLE_90:I = 0x5a

.field private static final HALF_UNIT:I = 0x2d

.field private static final ORIENTATION_HYSTERESIS:I = 0x19

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDisplayID:I

.field private mEnterSelfHint:Z

.field private mMainActivityPaused:Z

.field private mOrientation:I

.field private mOrientationListener:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;

.field private mPaused:Z

.field private mVIPCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private mVIPSelfieHintListener:Lcom/transsion/camera/app/common/IAppUIListener$IVIPSelfieHintListener;

.field private mVIPSelfieHintUIManager:Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlaveScreenSelfHintActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mDisplayID:I

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mOrientation:I

    .line 145
    new-instance v0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$1;-><init>(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mVIPCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$2;-><init>(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mVIPSelfieHintListener:Lcom/transsion/camera/app/common/IAppUIListener$IVIPSelfieHintListener;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mEnterSelfHint:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mVIPSelfieHintUIManager:Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->sendBroadcastWithQuitVIPSelfie()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mOrientation:I

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$500(II)I
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->roundOrientation(II)I

    move-result p0

    return p0
.end method

.method private static angleOfUnit90(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x2d

    .line 228
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method private configSystemUI()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1307

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    .line 138
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 142
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

    .line 220
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rsub-int p1, p0, 0x168

    .line 221
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

.method private processSlaveScreenIntent(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_display_id"

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mDisplayID:I

    const-string v0, "key_is_enter_self"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mEnterSelfHint:Z

    const-string v0, "key_is_main_paused"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mMainActivityPaused:Z

    const-string v0, "key_selfie_orientation"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mOrientation:I

    .line 124
    sget-object p1, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processSlaveScreenIntent, is enter self hint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mEnterSelfHint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", display ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mDisplayID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", main paused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mMainActivityPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mOrientation:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static roundOrientation(II)I
    .locals 1

    .line 232
    invoke-static {p0, p1}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->isAngleChanged(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {p0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->angleOfUnit90(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private sendBroadcastWithQuitVIPSelfie()V
    .locals 3

    .line 180
    sget-object v0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendBroadcastWithQuitVIPSelfie"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-boolean v1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mPaused:Z

    if-eqz v1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastWithQuitVIPSelfie, mPaused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mPaused:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 185
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "transsion.action.QUIT_VIP_SELFIE_KEY"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->configSystemUI()V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0c01a4

    .line 44
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 46
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    sget-object v0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateTasks new display screen width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", densityDpi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", density:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "dm == null, onCreateTasks getDisplayMetrics error."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 53
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->processSlaveScreenIntent(Landroid/content/Intent;)V

    .line 54
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 55
    div-int/lit8 p1, p1, 0x3

    const/16 v0, 0x168

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_1

    .line 57
    iput-boolean v1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mEnterSelfHint:Z

    goto :goto_1

    .line 59
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mEnterSelfHint:Z

    .line 61
    :goto_1
    sget-object p1, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSlaveScreenIntent, new enter self hint:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mEnterSelfHint:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    new-instance p1, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;

    invoke-direct {p1, p0, p0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;-><init>(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mOrientationListener:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;

    .line 65
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "transsion.action.VIP_SELFIE_SHOW_HINT_KEY"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mVIPCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string v0, "com.transsion.camera.feature.vipcapture.VipSelfieHintUIManager"

    .line 69
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;

    iput-object p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mVIPSelfieHintUIManager:Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;

    if-eqz p1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mVIPSelfieHintListener:Lcom/transsion/camera/app/common/IAppUIListener$IVIPSelfieHintListener;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;->setVIPSelfieHintListener(Lcom/transsion/camera/app/common/IAppUIListener$IVIPSelfieHintListener;)V

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mVIPSelfieHintUIManager:Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;

    const v0, 0x7f090507

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mVIPSelfieHintUIManager:Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;

    iget-boolean v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mEnterSelfHint:Z

    iget v3, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mOrientation:I

    invoke-virtual {p1, v0, v3}, Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;->updateVIPSelfHintLayout(ZI)V

    .line 75
    iget-boolean p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mMainActivityPaused:Z

    if-eqz p1, :cond_2

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mVIPSelfieHintUIManager:Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;

    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;->showOrHideVIPSelfHint(ZZ)V

    :cond_2
    return-void
.end method

.method protected onDestroyTasks()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mVIPCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    sget-object p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onDestroyTasks"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onPauseTasks()V
    .locals 1

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mPaused:Z

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mOrientationListener:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mOrientation:I

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mVIPSelfieHintUIManager:Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;->pause()V

    :cond_0
    return-void
.end method

.method protected onRestartTasks()V
    .locals 0

    return-void
.end method

.method protected onResumeTasks()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mPaused:Z

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->mOrientationListener:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method protected onStopTasks()V
    .locals 0

    return-void
.end method
