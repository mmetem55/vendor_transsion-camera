.class final Lcom/google/ar/core/j;
.super Lcom/google/ar/core/ArCoreApk;
.source "ArCoreApkImpl.java"


# static fields
.field private static final c:Lcom/google/ar/core/j;


# instance fields
.field a:Ljava/lang/Exception;

.field b:Z

.field private d:Z

.field private e:I

.field private f:J

.field private g:Lcom/google/ar/core/ArCoreApk$Availability;

.field private h:Z

.field private i:Lcom/google/ar/core/u;

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ar/core/j;

    invoke-direct {v0}, Lcom/google/ar/core/j;-><init>()V

    sput-object v0, Lcom/google/ar/core/j;->c:Lcom/google/ar/core/j;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/ar/core/ArCoreApk;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ar/core/j;->b:Z

    return-void
.end method

.method public static a()Lcom/google/ar/core/j;
    .locals 1

    sget-object v0, Lcom/google/ar/core/j;->c:Lcom/google/ar/core/j;

    return-object v0
.end method

.method static bridge synthetic c(Lcom/google/ar/core/j;Lcom/google/ar/core/ArCoreApk$Availability;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/j;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    return-void
.end method

.method static bridge synthetic f(Lcom/google/ar/core/j;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ar/core/j;->h:Z

    return-void
.end method

.method private static g(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.ar.core"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-nez v1, :cond_1

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_0

    array-length p0, p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1

    :catch_0
    return v0
.end method

.method private final declared-synchronized h(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/ar/core/j;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x80

    .line 3
    :try_start_2
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v2, "com.google.ar.core"

    .line 5
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com.google.ar.core"

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "required"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ar/core/j;->k:Z

    const-string v2, "com.google.ar.core.min_apk_version"

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.google.ar.core.min_apk_version"

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/ar/core/j;->l:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x1

    .line 10
    :try_start_4
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const-class v0, Lcom/google/ar/core/InstallActivity;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 12
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 13
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_1

    :try_start_5
    iput-boolean v1, p0, Lcom/google/ar/core/j;->j:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :try_start_6
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application manifest must contain activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    move-exception p1

    .line 16
    :try_start_7
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Could not load application package info"

    .line 15
    invoke-direct {v0, v1, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 17
    :cond_3
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Application manifest must contain meta-data com.google.ar.core.min_apk_version"

    .line 16
    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_4
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Application manifest must contain meta-data com.google.ar.core"

    .line 17
    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 14
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Could not load application package metadata"

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final i(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/j;->h(Landroid/content/Context;)V

    iget-boolean p0, p0, Lcom/google/ar/core/j;->k:Z

    return p0
.end method

.method private static final j(Landroid/app/Activity;)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;,
            Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;
        }
    .end annotation

    const-string v0, "ARCore-ArCoreApk"

    .line 1
    invoke-static {p0}, Lcom/google/ar/core/ag;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "Starting setup activity"

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    .line 4
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Setup activity launch failed"

    .line 5
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALLED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    return-object p0
.end method


# virtual methods
.method final declared-synchronized b(Landroid/content/Context;)Lcom/google/ar/core/u;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/j;->i:Lcom/google/ar/core/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ar/core/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ar/core/u;-><init>([B)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/ar/core/u;->a(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ar/core/j;->i:Lcom/google/ar/core/u;

    :cond_0
    iget-object p1, p0, Lcom/google/ar/core/j;->i:Lcom/google/ar/core/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final checkAvailability(Landroid/content/Context;)Lcom/google/ar/core/ArCoreApk$Availability;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/ar/core/j;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/ar/core/j;->d()V
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/FatalException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    :try_start_1
    invoke-static {p1}, Lcom/google/ar/core/ag;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;
    :try_end_1
    .catch Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    goto :goto_0

    .line 7
    :catch_1
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->UNSUPPORTED_DEVICE_NOT_CAPABLE:Lcom/google/ar/core/ArCoreApk$Availability;
    :try_end_2
    .catch Lcom/google/ar/core/exceptions/FatalException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return-object p0

    .line 5
    :cond_1
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/ar/core/j;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/google/ar/core/ArCoreApk$Availability;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-boolean v0, p0, Lcom/google/ar/core/j;->h:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ar/core/j;->h:Z

    new-instance v0, Lcom/google/ar/core/i;

    invoke-direct {v0, p0}, Lcom/google/ar/core/i;-><init>(Lcom/google/ar/core/j;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/ar/core/j;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, p1}, Lcom/google/ar/core/h;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {p1}, Lcom/google/ar/core/j;->g(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 13
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, p1}, Lcom/google/ar/core/h;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/ar/core/j;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, p1}, Lcom/google/ar/core/h;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/ar/core/j;->b(Landroid/content/Context;)Lcom/google/ar/core/u;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/ar/core/u;->b(Landroid/content/Context;Lcom/google/ar/core/h;)V

    .line 17
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/google/ar/core/j;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    if-eqz p1, :cond_7

    .line 18
    monitor-exit p0

    return-object p1

    :cond_7
    iget-boolean p1, p0, Lcom/google/ar/core/j;->h:Z

    if-eqz p1, :cond_8

    .line 19
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_CHECKING:Lcom/google/ar/core/ArCoreApk$Availability;

    monitor-exit p0

    return-object p1

    :cond_8
    const-string p1, "ARCore-ArCoreApk"

    const-string v0, "request not running but result is null?"

    .line 20
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catch_2
    move-exception p0

    const-string p1, "ARCore-ArCoreApk"

    const-string v0, "Error while checking app details and ARCore status"

    .line 8
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    return-object p0
.end method

.method final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/j;->a:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/google/ar/core/j;->e:I

    :cond_0
    iput-boolean v1, p0, Lcom/google/ar/core/j;->d:Z

    iget-object v0, p0, Lcom/google/ar/core/j;->i:Lcom/google/ar/core/u;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/ar/core/u;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/j;->i:Lcom/google/ar/core/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final e(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/j;->h(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Lcom/google/ar/core/j;->g(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/ar/core/j;->g(Landroid/content/Context;)I

    move-result p1

    iget p0, p0, Lcom/google/ar/core/j;->l:I

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final requestInstall(Landroid/app/Activity;Z)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;,
            Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/j;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->REQUIRED:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->OPTIONAL:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    .line 2
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/ar/core/j;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    goto :goto_1

    .line 4
    :cond_1
    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    .line 5
    :goto_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ar/core/ArCoreApk;->requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;,
            Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/ar/core/j;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/ar/core/j;->d()V

    .line 8
    invoke-static {p1}, Lcom/google/ar/core/j;->j(Landroid/app/Activity;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/ar/core/j;->d:Z

    if-eqz v0, :cond_1

    .line 9
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/ar/core/j;->a:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_2

    const-string p2, "ARCore-ArCoreApk"

    const-string v1, "Clearing previous failure: "

    .line 10
    invoke-static {p2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/ar/core/j;->a:Ljava/lang/Exception;

    goto :goto_0

    .line 18
    :cond_2
    instance-of p0, v0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    if-nez p0, :cond_5

    .line 20
    instance-of p0, v0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    if-nez p0, :cond_4

    .line 22
    instance-of p0, v0, Ljava/lang/RuntimeException;

    if-eqz p0, :cond_3

    .line 23
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 21
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected exception type"

    .line 24
    invoke-direct {p0, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 21
    :cond_4
    check-cast v0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    throw v0

    .line 19
    :cond_5
    check-cast v0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    throw v0

    .line 11
    :cond_6
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ar/core/j;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long p2, v2, v4

    if-lez p2, :cond_7

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/ar/core/j;->e:I

    :cond_7
    iget p2, p0, Lcom/google/ar/core/j;->e:I

    const/4 v2, 0x1

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/ar/core/j;->e:I

    iput-wide v0, p0, Lcom/google/ar/core/j;->f:J

    const/4 v0, 0x2

    if-gt p2, v0, :cond_8

    .line 12
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/google/ar/core/InstallActivity;

    .line 13
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "message"

    .line 14
    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    const-string p4, "behavior"

    .line 15
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v2, p0, Lcom/google/ar/core/j;->d:Z

    .line 17
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    return-object p0

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string p2, "Failed to launch InstallActivity"

    .line 16
    invoke-direct {p1, p2, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 11
    :cond_8
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string p1, "Requesting ARCore installation too rapidly."

    .line 12
    invoke-direct {p0, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
