.class Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;
.super Ljava/lang/Object;
.source "GoogleLensApi.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi$LensAvailabilityCallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mLensApi:Lcom/google/lens/sdk/LensApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->initLensApi(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 21
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private initLensApi(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    .line 33
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "initLensApi context is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/lens/sdk/LensApi;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->mLensApi:Lcom/google/lens/sdk/LensApi;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "initLensApi failed, no class found "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkLensStatus(Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;)V
    .locals 1

    if-nez p1, :cond_0

    .line 46
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "callback is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->mLensApi:Lcom/google/lens/sdk/LensApi;

    if-nez p0, :cond_1

    .line 50
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mLensApi is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_1
    new-instance v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi$LensAvailabilityCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi$LensAvailabilityCallbackWrapper;-><init>(Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->mLensApi:Lcom/google/lens/sdk/LensApi;

    if-nez p0, :cond_0

    .line 94
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startLens mLensApi is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/lens/sdk/LensApi;->onPause()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onPause mLensApi is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :catch_1
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "google lens onPause error"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public startLens(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    .line 60
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "startLens activity is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->mLensApi:Lcom/google/lens/sdk/LensApi;

    const-string v0, "startLens mLensApi is null"

    if-nez p0, :cond_1

    .line 64
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :catch_1
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "google lens activity is not found"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
