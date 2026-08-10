.class public Lcom/transsion/json/a/d;
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
    instance-of p0, p2, Ljava/lang/Number;

    if-eqz p0, :cond_0

    .line 2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    const-class p0, Ljava/lang/Byte;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/json/o;->b(Ljava/lang/Object;Ljava/lang/Class;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0
.end method
