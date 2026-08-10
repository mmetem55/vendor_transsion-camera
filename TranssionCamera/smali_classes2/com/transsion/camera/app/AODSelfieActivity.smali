.class public Lcom/transsion/camera/app/AODSelfieActivity;
.super Lcom/transsion/camera/app/SecureCameraActivity;
.source "AODSelfieActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IHintListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mLaunchedCamera:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/AODSelfieActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/AODSelfieActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/SecureCameraActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 47
    sget-object v0, Lcom/transsion/camera/app/AODSelfieActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private launchCameraActivity()V
    .locals 7

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardSecure()Z

    move-result v1

    .line 223
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardLocked()Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/SecureCameraActivity;->attachAlbumToIntent(Landroid/content/Intent;)V

    .line 227
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 229
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 232
    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->attachThumbnailToIntent(Landroid/content/Intent;)V

    .line 234
    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ModeFromAod"

    .line 236
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v4, "camera_launch_from"

    const-string v5, "launch_from_aod"

    .line 238
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x14000000

    .line 239
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    sget-object v4, Lcom/transsion/camera/app/AODSelfieActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchCameraActivity, keyguardSecure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardLocked: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentMode: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private launchPermissionActivity()V
    .locals 4

    .line 121
    sget-object v0, Lcom/transsion/camera/app/AODSelfieActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "launchPermissionActivity"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getDenyPermissions()Ljava/util/List;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;

    invoke-direct {v1}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;-><init>()V

    const v2, 0x7f100034

    .line 124
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->setTipText(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;

    const/4 v2, 0x0

    .line 125
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    .line 126
    invoke-virtual {v1, v0}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->setTargetAction(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->setTargetData(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "com.android.setting.ACTION_GET_PERMISSION_DETAILS"

    .line 129
    invoke-virtual {v1, v0}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->setTargetAction(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packagename"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v0}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->setTargetExtra(Landroid/os/Bundle;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;

    :goto_0
    const v0, 0x10008000

    .line 134
    invoke-virtual {v1, v0}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->setTargetFlags(I)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;

    .line 135
    invoke-static {p0, v1}, Lcom/transsion/secondaryhome/StandRemoteHelper;->startUnfoldRelayActivity(Landroid/content/Context;Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;)V

    return-void
.end method

.method private requestDismissKeyguardIfNeeded()V
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Lcom/transsion/camera/app/AODSelfieActivity$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/AODSelfieActivity$2;-><init>(Lcom/transsion/camera/app/AODSelfieActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    :cond_0
    return-void
.end method

.method private shieldSystemGestures(Landroid/view/View;)V
    .locals 2

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/AODSelfieActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/AODSelfieActivity$1;-><init>(Lcom/transsion/camera/app/AODSelfieActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private updateFingerPrintMode(Z)V
    .locals 3

    .line 293
    sget-object v0, Lcom/transsion/camera/app/AODSelfieActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFingerPrintMode identificationMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "update_listening_for_fingerprint"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 299
    sget-object p1, Lcom/transsion/camera/app/AODSelfieActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFingerPrintMode exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/SecureCameraActivity;->buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->currentDisplayStyle()I

    move-result p0

    .line 107
    sget-object p2, Lcom/transsion/camera/app/AODSelfieActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buildGotoGalleryIntent displayStyle: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ltz p0, :cond_0

    const-string p2, "displayStyle"

    .line 109
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method

.method protected correctOrientation(I)I
    .locals 1

    const/16 p0, 0x10e

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method protected doShowLensDirtyHintIfNeed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected getDisplayActivityType()I
    .locals 0

    .line 60
    sget p0, Lcom/transsion/camera/app/ui/ScreenManager;->ACTIVITY_TYPE_AOD:I

    return p0
.end method

.method protected hideErrorAndFinish()V
    .locals 0

    return-void
.end method

.method protected initAppUI(Lcom/transsion/camera/app/intent/IntentParser;)V
    .locals 9

    const v0, 0x7f0c0024

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f090066

    .line 76
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    new-instance v1, Lcom/transsion/camera/app/ui/AODAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AODAppUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->isSecureCamera()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->setSecureCamera(Z)V

    .line 79
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setHintListener(Lcom/transsion/camera/app/common/IAppUIListener$IHintListener;)V

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setDragExitListener(Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;)V

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v2, p1, Lcom/transsion/camera/app/intent/IntentParser;->mFromIntent:Z

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, v0

    .line 81
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/camera/app/ui/BaseAppUI;->init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/AODSelfieActivity;->shieldSystemGestures(Landroid/view/View;)V

    return-void
.end method

.method protected initConfigs()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->initConfigs()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mUseLifecycleBroadcast:Z

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mLensDirtyHintSupported:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsSkyShopGuideSupport:Z

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsSuperNightGuideSupport:Z

    return-void
.end method

.method protected initWindowAttributes()V
    .locals 0

    return-void
.end method

.method public onExit()V
    .locals 2

    .line 253
    sget-object v0, Lcom/transsion/camera/app/AODSelfieActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onExit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onPauseTasks()V
    .locals 1

    const/4 v0, 0x1

    .line 288
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/AODSelfieActivity;->updateFingerPrintMode(Z)V

    .line 289
    invoke-super {p0}, Lcom/transsion/camera/app/CameraActivity;->onPauseTasks()V

    return-void
.end method

.method protected onResumeTasks()V
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/AODSelfieActivity;->updateFingerPrintMode(Z)V

    .line 283
    invoke-super {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->onResumeTasks()V

    return-void
.end method

.method public onShow(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->messageType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/AODSelfieActivity;->showLowStorageTip()V

    :goto_0
    return-void
.end method

.method protected postCreateTasks()V
    .locals 0

    .line 248
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->registerScreenOff()V

    return-void
.end method

.method protected processFoldingFeatureState(I)V
    .locals 0

    if-eqz p1, :cond_1

    .line 179
    iget-boolean p1, p0, Lcom/transsion/camera/app/AODSelfieActivity;->mLaunchedCamera:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/transsion/camera/app/AODSelfieActivity;->mLaunchedCamera:Z

    .line 181
    iget-boolean p1, p0, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/transsion/camera/app/AODSelfieActivity;->requestDismissKeyguardIfNeeded()V

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    if-eqz p1, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/transsion/camera/app/AODSelfieActivity;->launchCameraActivity()V

    .line 188
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object p0

    sget-object p1, Lcom/transsion/camera/manager/ScreenRelay$Screen;->SECONDARY:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ScreenRelay;->switchScreen(Lcom/transsion/camera/manager/ScreenRelay$Screen;)V

    :cond_1
    return-void
.end method

.method protected processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    return-void
.end method

.method protected processWideCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V
    .locals 0

    return-void
.end method

.method protected showConfirmationFragment(Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/app/AODSelfieActivity;->launchPermissionActivity()V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected showErrorAndFinish(I)V
    .locals 0

    return-void
.end method

.method protected showExternalStorageUnmountedTip()V
    .locals 0

    return-void
.end method

.method protected showLowStorageTip()V
    .locals 2

    .line 140
    sget-object v0, Lcom/transsion/camera/app/AODSelfieActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showLowStorageTip"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;

    invoke-direct {v0}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;-><init>()V

    const v1, 0x7f100035

    .line 142
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->setTipText(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;

    const-string v1, "android.intent.action.VIEW"

    .line 143
    invoke-virtual {v0, v1}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->setTargetAction(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;

    const-string v1, "phonemaster://com.transsion.phonemaster/accesswithlistactivity?utm_source=camera"

    .line 144
    invoke-virtual {v0, v1}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->setTargetData(Ljava/lang/String;)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;

    const v1, 0x10008000

    .line 145
    invoke-virtual {v0, v1}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->setTargetFlags(I)Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;

    .line 146
    invoke-static {p0, v0}, Lcom/transsion/secondaryhome/StandRemoteHelper;->startUnfoldRelayActivity(Landroid/content/Context;Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;)V

    return-void
.end method

.method protected showThermalThrottleUrgent()V
    .locals 2

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected showWaitPage()V
    .locals 1

    .line 273
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSleepActivitySupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    sget-object p0, Lcom/transsion/camera/app/AODSelfieActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "disable time out exit by adb."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
