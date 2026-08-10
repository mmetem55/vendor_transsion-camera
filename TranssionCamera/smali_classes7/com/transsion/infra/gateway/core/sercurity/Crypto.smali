.class public Lcom/transsion/infra/gateway/core/sercurity/Crypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# direct methods
.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encryptedString",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 25
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const/16 v1, 0xc

    new-array v2, v1, [B

    .line 27
    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 28
    invoke-static {p0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    invoke-static {p0, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    invoke-static {p1, v0, v2}, Lcom/transsion/infra/gateway/core/sercurity/Crypto;->getCipher(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 32
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private static getCipher(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "cipherMode",
            "iv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "AES/GCM/NoPadding"

    .line 36
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 40
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 41
    new-instance p0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {p0, v2, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 42
    invoke-virtual {v0, p1, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v0
.end method
