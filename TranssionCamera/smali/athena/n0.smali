.class public Lathena/n0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Lathena/n0;


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

    iput-object p1, p0, Lathena/n0;->c:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lathena/n0;
    .locals 2

    const-class v0, Lathena/n0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lathena/n0;->a:Lathena/n0;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lathena/n0;

    invoke-direct {v1, p0}, Lathena/n0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lathena/n0;->a:Lathena/n0;

    .line 4
    :cond_0
    sget-object p0, Lathena/n0;->a:Lathena/n0;
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

    :try_start_0
    const-string v0, "tcrypto"

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 40
    iget-object v0, p0, Lathena/n0;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 46
    invoke-direct {p0, v0}, Lathena/n0;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    .line 49
    :cond_1
    iget-object p0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-nez p0, :cond_2

    return-void

    .line 55
    :cond_2
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lathena/n0;->c:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 9
    iget-object v1, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 10
    invoke-direct {p0, v0}, Lathena/n0;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    .line 13
    :cond_0
    iget-object v0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    .line 18
    :try_start_0
    invoke-static {}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaKeystoreManager;->getInstance()Lcom/transsion/sdk/oneid/crypto/crypter/RsaKeystoreManager;

    move-result-object v0

    iget-object v1, p0, Lathena/n0;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaKeystoreManager;->createRsaKeyPair(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    new-instance v0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;

    iget-object v1, p0, Lathena/n0;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v0, p2}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->encrypt(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Loneid/a;->base64Encode([B)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object p0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 25
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "rsaCrypter encrypt error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "keystore encrypt error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 36
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 37
    throw p0

    .line 38
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "sp is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 58
    iget-object v0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lathena/n0;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lathena/n0;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    .line 61
    :cond_0
    iget-object p0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(Ljava/lang/String;)I
    .locals 3

    .line 19
    iget-object v0, p0, Lathena/n0;->c:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 23
    :cond_0
    iget-object v2, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    .line 24
    invoke-direct {p0, v0}, Lathena/n0;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    .line 27
    :cond_1
    iget-object p0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 32
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lathena/n0;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lathena/n0;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    .line 10
    :cond_1
    iget-object p0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-nez p0, :cond_2

    return-void

    .line 16
    :cond_2
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lathena/n0;->c:Landroid/content/Context;

    if-eqz v1, :cond_6

    .line 5
    iget-object v2, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lathena/n0;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    .line 9
    :cond_0
    iget-object v1, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_5

    .line 14
    :try_start_0
    invoke-static {}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaKeystoreManager;->getInstance()Lcom/transsion/sdk/oneid/crypto/crypter/RsaKeystoreManager;

    move-result-object v1

    iget-object v2, p0, Lathena/n0;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaKeystoreManager;->createRsaKeyPair(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;

    iget-object p0, p0, Lathena/n0;->c:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v0, p1}, Loneid/a;->base64Decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->decrypt([B)[B

    move-result-object p0

    .line 21
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    .line 23
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "rsaCrypter decrypt error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-object v0

    .line 27
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "keystore decrypt error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 31
    throw p0

    .line 32
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "sp is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_6
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lathena/n0;->c:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    iget-object v2, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lathena/n0;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    .line 9
    :cond_1
    iget-object p0, p0, Lathena/n0;->b:Landroid/content/SharedPreferences;

    if-nez p0, :cond_2

    return-object v1

    .line 14
    :cond_2
    :try_start_0
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 16
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    return-object v1
.end method
