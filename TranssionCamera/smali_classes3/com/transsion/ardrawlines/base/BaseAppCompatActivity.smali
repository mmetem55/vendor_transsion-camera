.class public abstract Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseAppCompatActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseAppCompatActivity"


# instance fields
.field private mActionBar:Landroidx/appcompat/app/ActionBar;

.field protected mBinding:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0EkgGPiJqvQGCAjpAb80X70tBGM(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->lambda$setupImmersive$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static synthetic lambda$setupImmersive$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 169
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 171
    new-instance v1, Landroid/view/WindowInsets$Builder;

    invoke-direct {v1, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result p1

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addClick(Landroid/view/View;)V
    .locals 1

    .line 133
    new-instance v0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity$2;-><init>(Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addShakeClick(Landroid/view/View;)V
    .locals 1

    .line 124
    new-instance v0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity$1;-><init>(Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getActionTitle()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBinding()Landroidx/databinding/ViewDataBinding;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 97
    iget-object p0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method public abstract initData()V
.end method

.method public abstract initViews()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 41
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->useSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget v0, Lcom/transsion/ardrawlines/R$style;->HIOSAppTheme:I

    sget v1, Lcom/transsion/ardrawlines/R$style;->XOSAppTheme:I

    sget v2, Lcom/transsion/ardrawlines/R$style;->ITELOSAppTheme:I

    invoke-static {p0, v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->setAppTheme(Landroid/content/Context;III)V

    .line 46
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->setContentView(Landroid/os/Bundle;)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    .line 48
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 50
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->useActionBar()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->getActionTitle()I

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->getActionTitle()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 54
    iget-object p1, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    iget-object p1, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x465

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/analysislibrary/StatisticAnalysis;->getInstance(Landroid/content/Context;ZZIZZ)Lcom/transsion/analysislibrary/StatisticAnalysis;

    .line 63
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->initViews()V

    .line 65
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 81
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 73
    sget-object v0, Lcom/transsion/ardrawlines/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->isAllNeedPermissionsGranted(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e9

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 0

    .line 114
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->useActionBar()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->setupImmersive()V

    :cond_1
    return-void
.end method

.method public abstract setContentView(Landroid/os/Bundle;)I
.end method

.method protected setupImmersive()V
    .locals 3

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    const/4 v1, 0x2

    .line 165
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public useActionBar()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public useSystem()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
