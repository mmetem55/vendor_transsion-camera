.class public Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;
.super Ljava/lang/Object;
.source "GatewaySignKey.java"


# instance fields
.field public algorithm:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

.field public key:Ljava/lang/String;

.field public keyVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "keyVersion",
            "algorithm"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->key:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->keyVersion:I

    .line 10
    iput-object p3, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->algorithm:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->algorithm:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyVersion()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->keyVersion:I

    return p0
.end method
