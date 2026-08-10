.class public Lcom/transsion/json/a/o;
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
    .locals 0

    .line 1
    instance-of p0, p2, Ljava/util/Collection;

    if-eqz p0, :cond_0

    .line 2
    check-cast p2, Ljava/util/Collection;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, p2, p0, p3}, Lcom/transsion/json/o;->a(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-virtual {p1, p2}, Lcom/transsion/json/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
