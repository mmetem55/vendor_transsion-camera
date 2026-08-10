.class public Loneid/i;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/sdk/oneid/data/IdChangeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/sdk/oneid/data/IdChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Loneid/i;->a:Ljava/util/ArrayList;

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

    invoke-virtual {v0}, Loneid/m;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p0, p0, Loneid/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Loneid/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Loneid/j;

    move-result-object p0

    return-object p0
.end method
