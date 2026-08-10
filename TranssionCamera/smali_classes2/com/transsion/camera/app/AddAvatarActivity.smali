.class public Lcom/transsion/camera/app/AddAvatarActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AddAvatarActivity.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private arLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final genderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

.field private final mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

.field private mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;


# direct methods
.method public static synthetic $r8$lambda$MYceUpVc7E9h2PhWxSewNTIi1IA(Lcom/transsion/camera/app/AddAvatarActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/AddAvatarActivity;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$n1UcnyThfN9b5t79MF70EDotZ8U(Lcom/transsion/camera/app/AddAvatarActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/AddAvatarActivity;->lambda$onCreate$0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AddAvatarActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/AddAvatarActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/OrientationHelper;

    invoke-direct {v0}, Lcom/transsion/camera/utils/OrientationHelper;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/AddAvatarActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    .line 36
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/AddAvatarActivity;->genderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/AddAvatarActivity;)Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/AddAvatarActivity;->genderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/AddAvatarActivity;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/AddAvatarActivity;->startRealAddAvatarPage(I)V

    return-void
.end method

.method private getInitGender()I
    .locals 2

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "init_gender"

    .line 43
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$0(Landroidx/activity/result/ActivityResult;)V
    .locals 3

    .line 74
    sget-object v0, Lcom/transsion/camera/app/AddAvatarActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForActivityResult() called with: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/transsion/camera/app/AddAvatarActivity;->getInitGender()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/AddAvatarActivity;->startRealAddAvatarPage(I)V

    return-void
.end method

.method private startRealAddAvatarPage(I)V
    .locals 3

    .line 47
    sget-object v0, Lcom/transsion/camera/app/AddAvatarActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRealAddAvatarPage() called with: gender = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/camera/app/AvatarActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "init_mode"

    const-string v2, "create"

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "init_gender"

    .line 50
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "need_override_screensize"

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "request_id"

    const-string v2, "package"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/ar/utils/IntentUtils;->copyIntentExtra(Landroid/content/Intent;Landroid/content/Intent;[Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/AddAvatarActivity;->arLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/AddAvatarActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/OrientationHelper;->getOrientation()I

    move-result p0

    return p0
.end method

.method public isExpandUI()Z
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/AddAvatarActivity;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenManagerExt;->screenExpanded(Lcom/transsion/camera/app/common/manager/IScreenManager;)Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 65
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/AddAvatarActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "com.transsion.camera.app.ui.ScreenManager"

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/manager/IScreenManager;

    iput-object v0, p0, Lcom/transsion/camera/app/AddAvatarActivity;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 68
    sget-object v0, Lcom/transsion/camera/app/AddAvatarActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() called with: savedInstanceState = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "has_launched_ar_activity"

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 73
    :cond_0
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v0, Lcom/transsion/camera/app/AddAvatarActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/AddAvatarActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/AddAvatarActivity;)V

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/AddAvatarActivity;->arLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/app/AddAvatarActivity;->getInitGender()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 81
    sget-object p1, Lcom/transsion/camera/ar/manager/ARManager$Holder;->instance:Lcom/transsion/camera/ar/manager/ARManager;

    new-instance v0, Lcom/transsion/camera/app/AddAvatarActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/AddAvatarActivity$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/AddAvatarActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ar/manager/ARManager;->init(Ljava/lang/Runnable;)V

    return-void

    .line 86
    :cond_1
    sget-object p1, Lcom/transsion/camera/ar/manager/ARManager$Holder;->instance:Lcom/transsion/camera/ar/manager/ARManager;

    invoke-virtual {p1}, Lcom/transsion/camera/ar/manager/ARManager;->init()V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/app/AddAvatarActivity;->genderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->setShowCancelButton(Z)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/AddAvatarActivity;->genderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    new-instance v0, Lcom/transsion/camera/app/AddAvatarActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/AddAvatarActivity$1;-><init>(Lcom/transsion/camera/app/AddAvatarActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->setConfirmListener(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/app/AddAvatarActivity;->genderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "select_gender"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/AddAvatarActivity;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->updateScreenFormType(Landroid/content/Context;IZ)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p0, "has_launched_ar_activity"

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/AddAvatarActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/OrientationHelper;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    return-void
.end method

.method public unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/AddAvatarActivity;->mOrientationHelper:Lcom/transsion/camera/utils/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/OrientationHelper;->unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    return-void
.end method
