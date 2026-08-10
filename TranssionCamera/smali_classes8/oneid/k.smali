.class public Loneid/k;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/transsion/sdk/oneid/data/OdIdInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/sdk/oneid/data/OdIdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Loneid/k;->a:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    return-void
.end method


# virtual methods
.method public a()Loneid/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Loneid/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Loneid/m;->e()Loneid/m;

    move-result-object v0

    invoke-virtual {v0}, Loneid/m;->g()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Loneid/k;->a:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    invoke-virtual {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Loneid/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Loneid/j;

    move-result-object p0

    return-object p0
.end method
