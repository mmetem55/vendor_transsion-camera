.class Lathena/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/gslb/GslbSdk$InitListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/transsion/athena/config/data/model/a;

.field final synthetic d:Lathena/k;


# direct methods
.method constructor <init>(Lathena/k;Ljava/lang/String;ILcom/transsion/athena/config/data/model/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lathena/l;->d:Lathena/k;

    iput-object p2, p0, Lathena/l;->a:Ljava/lang/String;

    iput p3, p0, Lathena/l;->b:I

    iput-object p4, p0, Lathena/l;->c:Lcom/transsion/athena/config/data/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFail()V
    .locals 0

    return-void
.end method

.method public onInitSuccess(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lathena/l;->d:Lathena/k;

    iget-object v1, p0, Lathena/l;->a:Ljava/lang/String;

    iget v2, p0, Lathena/l;->b:I

    iget-object p0, p0, Lathena/l;->c:Lcom/transsion/athena/config/data/model/a;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, v1, v2, p0, p1}, Lathena/k;->a(Lathena/k;Ljava/lang/String;ILcom/transsion/athena/config/data/model/a;Ljava/lang/String;)V

    return-void
.end method
