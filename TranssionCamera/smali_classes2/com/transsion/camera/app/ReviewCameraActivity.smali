.class public Lcom/transsion/camera/app/ReviewCameraActivity;
.super Lcom/transsion/camera/app/PermissionActivity;
.source "ReviewCameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ReviewCameraActivity$FragmentFactory;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureCamera:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ReviewCameraActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ReviewCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mSecureCamera:Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    .line 145
    new-instance v0, Lcom/transsion/camera/app/ReviewCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ReviewCameraActivity$1;-><init>(Lcom/transsion/camera/app/ReviewCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 44
    sget-object v0, Lcom/transsion/camera/app/ReviewCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private updateWindow()V
    .locals 2

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 92
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    .line 94
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public isExpandUI()Z
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenManagerExt;->screenExpanded(Lcom/transsion/camera/app/common/manager/IScreenManager;)Z

    move-result p0

    return p0
.end method

.method public onBackPressed()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "review_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 142
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(Landroid/content/Context;IZ)Z

    .line 130
    invoke-super {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/ReviewCameraActivity;->updateWindow()V

    .line 58
    new-instance p1, Lcom/transsion/camera/app/ui/ScreenManager;

    sget v0, Lcom/transsion/camera/app/ui/ScreenManager;->ACTIVITY_TYPE_SLAVE:I

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/ScreenManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const p1, 0x7f0c0051

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/transsion/camera/app/ReviewCameraActivity$FragmentFactory;->access$000(Landroid/content/Intent;)Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "isSecureCamera"

    .line 70
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mSecureCamera:Z

    .line 71
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 72
    iget-boolean v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mSecureCamera:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "review_fragment"

    .line 76
    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const v0, 0x7f0903c0

    .line 77
    iget-object v1, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mFragment:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    const-string v2, "ReviewVideo"

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 80
    iget-boolean p1, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mSecureCamera:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 82
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method protected onDestroyTasks()V
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected onRestartTasks()V
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onRestartTasks()V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/ReviewCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(Landroid/content/Context;IZ)Z

    return-void
.end method

.method protected onStopTasks()V
    .locals 1

    .line 102
    sget-object p0, Lcom/transsion/camera/app/ReviewCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onStopTasks"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
