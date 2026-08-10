.class public Lcom/transsion/json/j;
.super Ljava/lang/Object;
.source "transsion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/transsion/json/p;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/json/r;",
            "Lcom/transsion/json/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/j;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/j;->b:Ljava/util/Map;

    return-void
.end method

.method private a()Lcom/transsion/json/o;
    .locals 4

    .line 3
    new-instance v0, Lcom/transsion/json/o;

    invoke-direct {v0}, Lcom/transsion/json/o;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/transsion/json/j;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 5
    iget-object v3, p0, Lcom/transsion/json/j;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/json/p;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/json/o;->a(Ljava/lang/Class;Lcom/transsion/json/p;)Lcom/transsion/json/o;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transsion/json/j;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/json/r;

    .line 7
    iget-object v3, p0, Lcom/transsion/json/j;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/json/p;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/json/o;->a(Lcom/transsion/json/r;Lcom/transsion/json/p;)Lcom/transsion/json/o;

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/json/j;->a()Lcom/transsion/json/o;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/transsion/json/m;

    invoke-direct {v0, p1}, Lcom/transsion/json/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/json/m;->d()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/json/o;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
