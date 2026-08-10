.class public Lcom/transsion/json/a/n;
.super Ljava/lang/Object;
.source "transsion.java"

# interfaces
.implements Lcom/transsion/json/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/json/o;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const-class p4, Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 1
    instance-of v1, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 2
    check-cast p3, Ljava/lang/reflect/ParameterizedType;

    .line 3
    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 4
    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p3

    const/4 v2, 0x1

    aget-object p3, p3, v2

    .line 5
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/transsion/json/a/n;->a()Ljava/util/HashMap;

    move-result-object p0

    if-ne v1, p4, :cond_0

    move-object v1, v0

    :cond_0
    if-ne p3, p4, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p3

    :goto_0
    invoke-virtual {p1, p2, p0, v1, v0}, Lcom/transsion/json/o;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/transsion/json/a/n;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p2, p0, v0, v0}, Lcom/transsion/json/o;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected a()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method
