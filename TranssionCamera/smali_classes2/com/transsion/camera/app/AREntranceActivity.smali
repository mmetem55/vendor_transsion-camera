.class public Lcom/transsion/camera/app/AREntranceActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AREntranceActivity.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private arPaintView:Landroid/view/View;

.field private arShotView:Landroid/view/View;

.field private cancelView:Landroid/view/View;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private pendingFinishIntent:Landroid/content/Intent;

.field private resultCode:I

.field private splashContainer:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$Vk6w22XO9cygyK-vkejc6-U8Zkk(Lcom/transsion/camera/app/AREntranceActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/AREntranceActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dfVgthVptRREcyeDW3d_SUaSvx0(Lcom/transsion/camera/app/AREntranceActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/AREntranceActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dm-sc7SIo-9i0EqhmW_xL5sYcMI(Lcom/transsion/camera/app/AREntranceActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/AREntranceActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AREntranceActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/AREntranceActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lcom/transsion/camera/app/AREntranceActivity;->resultCode:I

    return-void
.end method

.method private enterARPaintActivity()V
    .locals 2

    .line 117
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/AREntranceActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->requestARDrawlinePermissions()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 119
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.ardrawlines.ARDrawLinesActivity"

    .line 120
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1001

    .line 121
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private enterARShotActivity()V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/transsion/camera/app/AREntranceActivity;->showARSplash()V

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/AREntranceActivity;->processIntent(Landroid/content/Intent;)V

    const/16 v1, 0x1000

    .line 112
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private static getARDrawLinePermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    :try_start_0
    const-class v0, Lcom/transsion/ardrawlines/permission/PermissionManager;

    sget-object v1, Lcom/transsion/ardrawlines/permission/PermissionManager;->TAG:Ljava/lang/String;

    const-string v1, "mAllPermissionList"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 59
    :catchall_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private hasDenyAndNeverShowDialog(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 231
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 233
    sget-object v3, Lcom/transsion/camera/app/AREntranceActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasDenyAndNeverShowDialog result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,deniedPermission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private hideAllSplash()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/AREntranceActivity;->splashContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/app/AREntranceActivity;->splashContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/app/AREntranceActivity;->enterARShotActivity()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/app/AREntranceActivity;->enterARPaintActivity()V

    return-void
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 3

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "enableShutterSound"

    const-string v1, "enablePrintFinger"

    const-string v2, "enableLocation"

    .line 105
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/ar/utils/IntentUtils;->copyIntentExtra(Landroid/content/Intent;Landroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method

.method private setFullscreen()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    .line 65
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v2, 0x400

    .line 66
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 67
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/Window;->setColorMode(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/Window;->setColorMode(I)V

    .line 72
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    .line 75
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private showARDrawlinePermissionsRequest()V
    .locals 3

    .line 179
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_title"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 181
    invoke-direct {p0}, Lcom/transsion/camera/app/AREntranceActivity;->showDialogMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 182
    new-instance v1, Lcom/transsion/camera/app/AREntranceActivity$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/AREntranceActivity$1;-><init>(Lcom/transsion/camera/app/AREntranceActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_go_setting"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/AREntranceActivity$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/AREntranceActivity$2;-><init>(Lcom/transsion/camera/app/AREntranceActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 204
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/AREntranceActivity;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 205
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private showARSplash()V
    .locals 3

    .line 152
    invoke-direct {p0}, Lcom/transsion/camera/app/AREntranceActivity;->hideAllSplash()V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/AREntranceActivity;->splashContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->include_ar_shot_splash:I

    iget-object p0, p0, Lcom/transsion/camera/app/AREntranceActivity;->splashContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private showDialogMsg()Ljava/lang/String;
    .locals 3

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera_function_permission_head"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    sget v1, Lcom/transsion/camera/feature/arcore/R$string;->phone_permission_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 175
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected canShowPermissionsDialog()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public finish()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/AREntranceActivity;->pendingFinishIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.camera.action.START_SPECIFY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.camera_launch_source"

    const-string v2, "arcore_mode"

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iput-object v0, p0, Lcom/transsion/camera/app/AREntranceActivity;->pendingFinishIntent:Landroid/content/Intent;

    .line 147
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/AREntranceActivity;->resultCode:I

    iget-object v1, p0, Lcom/transsion/camera/app/AREntranceActivity;->pendingFinishIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    iput-object p3, p0, Lcom/transsion/camera/app/AREntranceActivity;->pendingFinishIntent:Landroid/content/Intent;

    const/4 p3, -0x1

    .line 133
    iput p3, p0, Lcom/transsion/camera/app/AREntranceActivity;->resultCode:I

    const/16 p3, 0x1001

    if-ne p1, p3, :cond_0

    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 135
    iput p1, p0, Lcom/transsion/camera/app/AREntranceActivity;->resultCode:I

    .line 136
    invoke-virtual {p0}, Lcom/transsion/camera/app/AREntranceActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    new-instance p1, Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/transsion/camera/app/AREntranceActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 86
    invoke-static {}, Lcom/transsion/camera/app/AREntranceActivity;->getARDrawLinePermissions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->initARDrawlinePermissionList(Ljava/util/List;)V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/app/AREntranceActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result p1

    if-nez p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/app/AREntranceActivity;->finish()V

    return-void

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/AREntranceActivity;->setFullscreen()V

    .line 92
    sget p1, Lcom/transsion/camera/feature/arcore/R$layout;->ar_activity_entrance:I

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 93
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->ar_activity_cover:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil;->startRevealAnimation(Landroid/view/View;Landroid/app/Activity;)V

    .line 94
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->exit:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/AREntranceActivity;->cancelView:Landroid/view/View;

    .line 95
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->ar_shot:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/AREntranceActivity;->arShotView:Landroid/view/View;

    .line 96
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->ar_paint:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/AREntranceActivity;->arPaintView:Landroid/view/View;

    .line 97
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->splash_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/AREntranceActivity;->splashContainer:Landroid/view/ViewGroup;

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/app/AREntranceActivity;->cancelView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/AREntranceActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/AREntranceActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/AREntranceActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/AREntranceActivity;->arShotView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/AREntranceActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/AREntranceActivity$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/AREntranceActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/app/AREntranceActivity;->arPaintView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/AREntranceActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/AREntranceActivity$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/AREntranceActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 223
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 209
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 210
    sget-object v0, Lcom/transsion/camera/app/AREntranceActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPermissionsResult() called with: requestCode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], permissions = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], grantResults = ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    array-length p2, p3

    if-nez p2, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/AREntranceActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz p2, :cond_1

    const/16 p3, 0x66

    if-ne p3, p1, :cond_1

    .line 214
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getDenyARDrawlinePermissions()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/AREntranceActivity;->hasDenyAndNeverShowDialog(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/transsion/camera/app/AREntranceActivity;->showARDrawlinePermissionsRequest()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/AREntranceActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/transsion/camera/app/AREntranceActivity;->finish()V

    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/AREntranceActivity;->hideAllSplash()V

    return-void
.end method
