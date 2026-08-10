.class public Lcom/transsion/infra/gateway/core/sercurity/BasicSigner;
.super Lcom/transsion/infra/gateway/core/sercurity/Signer;
.source "BasicSigner.java"


# instance fields
.field private final secret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secret"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/transsion/infra/gateway/core/sercurity/Signer;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/transsion/infra/gateway/core/sercurity/BasicSigner;->secret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public sign(Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algo",
            "content"
        }
    .end annotation

    .line 34
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 35
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p0, p0, Lcom/transsion/infra/gateway/core/sercurity/BasicSigner;->secret:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string p0, "UTF-8"

    .line 36
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    .line 37
    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    sget-object p1, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {p1, p0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0
.end method
