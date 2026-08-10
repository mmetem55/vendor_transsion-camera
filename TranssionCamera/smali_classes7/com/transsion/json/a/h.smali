.class public Lcom/transsion/json/a/h;
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
    .locals 1

    .line 1
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 2
    check-cast p3, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/transsion/json/k;

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/json/o;->a()Lcom/transsion/json/r;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p4, v0

    const/4 p1, 0x1

    aput-object p2, p4, p1

    const/4 p1, 0x2

    aput-object p3, p4, p1

    const-string p1, "%s:  Don\'t know how to convert %s to enumerated constant of %s"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method
