.class public Lathena/m0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Lathena/m0;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lathena/m0;->c:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lathena/m0;
    .locals 2

    const-class v0, Lathena/m0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lathena/m0;->a:Lathena/m0;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lathena/m0;

    invoke-direct {v1, p0}, Lathena/m0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lathena/m0;->a:Lathena/m0;

    .line 4
    :cond_0
    sget-object p0, Lathena/m0;->a:Lathena/m0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/transsion/ga/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tcrypto"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lathena/m0;->b:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    .line 40
    iget-object v1, p0, Lathena/m0;->c:Landroid/content/Context;

    if-eqz v1, :cond_6

    .line 44
    iget-object v2, p0, Lathena/m0;->b:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 45
    invoke-direct {p0, v1}, Lathena/m0;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lathena/m0;->b:Landroid/content/SharedPreferences;

    .line 48
    :cond_0
    iget-object v1, p0, Lathena/m0;->b:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_5

    .line 53
    :try_start_0
    invoke-static {}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaKeystoreManager;->getInstance()Lcom/transsion/sdk/oneid/crypto/crypter/RsaKeystoreManager;

    move-result-object v1

    iget-object v2, p0, Lathena/m0;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaKeystoreManager;->createRsaKeyPair(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    iget-object v1, p0, Lathena/m0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;

    iget-object p0, p0, Lathena/m0;->c:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0, p1}, Loneid/a;->base64Decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->decrypt([B)[B

    move-result-object p0

    .line 60
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    .line 62
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "rsaCrypter decrypt error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-object v0

    .line 66
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "keystore decrypt error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 70
    throw p0

    .line 71
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "sp is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_6
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
