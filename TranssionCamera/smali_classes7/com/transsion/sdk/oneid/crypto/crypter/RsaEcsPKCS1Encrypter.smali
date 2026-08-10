.class public Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1Encrypter;
.super Loneid/a;
.source "source.java"


# instance fields
.field private mEncrypter:Ljavax/crypto/Cipher;

.field private final mPassword:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loneid/a;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Loneid/a;->base64DecodeNoWrap(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1Encrypter;->mPassword:[B

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
    iget-object v0, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1Encrypter;->mEncrypter:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    iget-object v1, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1Encrypter;->mPassword:[B

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v1, "RSA"

    .line 3
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 5
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 7
    iput-object v1, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1Encrypter;->mEncrypter:Ljavax/crypto/Cipher;

    :cond_0
    return-void
.end method


# virtual methods
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

    invoke-virtual {p0, p1}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1Encrypter;->encrypt([B)[B

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
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1Encrypter;->ensureEncrypter()V

    .line 2
    iget-object p0, p0, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1Encrypter;->mEncrypter:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method
