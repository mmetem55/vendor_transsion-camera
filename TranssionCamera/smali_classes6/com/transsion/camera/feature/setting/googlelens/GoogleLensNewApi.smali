.class public Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;
.super Ljava/lang/Object;
.source "GoogleLensNewApi.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 17
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "context is not instanceof Activity"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_0
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private getLensIntent()Landroid/content/Intent;
    .locals 1

    .line 49
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "google://lens"

    .line 50
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "com.google.android.googlequicksearchbox"

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public checkLensStatus(Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->getLensIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    if-nez p1, :cond_1

    .line 30
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "callback is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_1
    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;->onLensStatusFetched(I)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 57
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "google lens pause"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 62
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "google lens resume"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public startLens(Landroid/app/Activity;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->getLensIntent()Landroid/content/Intent;

    move-result-object p0

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    .line 41
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensNewApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "google lens activity is not found"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
