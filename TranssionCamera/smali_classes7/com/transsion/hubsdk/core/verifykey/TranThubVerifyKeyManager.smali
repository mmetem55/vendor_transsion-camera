.class public Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;
.super Ljava/lang/Object;
.source "TranThubVerifyKeyManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/verifykey/ITranVerifyKeyManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubVerifyKeyManager"

.field private static sBinder:Landroid/os/Binder;

.field private static sService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;->sBinder:Landroid/os/Binder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "verify_key"

    .line 33
    invoke-static {p0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;->sService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    return-void
.end method

.method protected static setService(Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;)V
    .locals 0

    .line 60
    sput-object p0, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;->sService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    return-void
.end method


# virtual methods
.method public verify(Landroid/content/Context;)I
    .locals 4

    .line 38
    sget-object p0, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;->sService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    const/4 v0, -0x8

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {p1}, Lcom/transsion/hubsdk/util/TranSignUtils;->getCertSHA1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 45
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 46
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p1, :cond_1

    .line 47
    sget-object p1, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;->TAG:Ljava/lang/String;

    const-string v2, "AppKey is null"

    invoke-static {p1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object p1, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;->sService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    sget-object v2, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;->sBinder:Landroid/os/Binder;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, p0, v1}, Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;->verify(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const-string v2, "com.transsion.appkey"

    .line 50
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    sget-object v2, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;->sService:Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;

    sget-object v3, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;->sBinder:Landroid/os/Binder;

    invoke-interface {v2, v3, p1, p0, v1}, Lcom/transsion/hubsdk/verifykey/ITranVerifyKeyManager;->verify(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TranVerifyKeyManager verify Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 39
    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/hubsdk/core/verifykey/TranThubVerifyKeyManager;->TAG:Ljava/lang/String;

    const-string p1, "service or context  is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
