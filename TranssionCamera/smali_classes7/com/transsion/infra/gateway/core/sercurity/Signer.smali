.class public abstract Lcom/transsion/infra/gateway/core/sercurity/Signer;
.super Ljava/lang/Object;
.source "Signer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract sign(Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;Ljava/lang/String;)Ljava/lang/String;
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
.end method
