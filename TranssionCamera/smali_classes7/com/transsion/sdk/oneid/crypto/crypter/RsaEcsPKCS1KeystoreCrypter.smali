.class public Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;
.super Loneid/a;
.source "source.java"


# instance fields
.field private mDecrypter:Ljavax/crypto/Cipher;

.field private mEncrypter:Ljavax/crypto/Cipher;

.field private mPrivateKey:Ljava/security/Key;

.field private mPublicKey:Ljava/security/Key;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loneid/a;-><init>()V

    return-void
.end method

.method private ensureDecrypter()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->getKeyPair()V

    .line 3
    iget-object v0, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->mDecrypter:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 4
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->mPrivateKey:Ljava/security/Key;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 6
    iput-object v0, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->mDecrypter:Ljavax/crypto/Cipher;

    :cond_0
    return-void
.end method

.method private ensureEncrypter()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->getKeyPair()V

    .line 3
    iget-object v0, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->mEncrypter:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 4
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->mPublicKey:Ljava/security/Key;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 6
    iput-object v0, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->mEncrypter:Ljavax/crypto/Cipher;

    :cond_0
    return-void
.end method

.method private getKeyPair()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "crypto"

    .line 1
    iget-object v1, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->mPrivateKey:Ljava/security/Key;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->mPublicKey:Ljava/security/Key;

    if-nez v1, :cond_1

    :cond_0
    :try_start_0
    const-string v1, "AndroidKeyStore"

    .line 3
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 6
    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->mPrivateKey:Ljava/security/Key;

    .line 7
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->mPublicKey:Ljava/security/Key;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    throw p0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->ensureDecrypter()V

    .line 2
    iget-object p0, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->mDecrypter:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->encrypt([B)[B

    move-result-object p0

    return-object p0
.end method

.method public encrypt([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->ensureEncrypter()V

    .line 2
    iget-object p0, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1KeystoreCrypter;->mEncrypter:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method
