.class public Lcom/transsion/json/a/k;
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
    check-cast p2, Lcom/transsion/json/n;

    .line 2
    invoke-virtual {p2}, Lcom/transsion/json/n;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/transsion/json/n;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/json/n;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
