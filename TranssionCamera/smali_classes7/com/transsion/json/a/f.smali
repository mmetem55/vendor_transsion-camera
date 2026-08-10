.class public Lcom/transsion/json/a/f;
.super Ljava/lang/Object;
.source "transsion.java"

# interfaces
.implements Lcom/transsion/json/p;


# virtual methods
.method public a()Lcom/transsion/json/f;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/transsion/json/o;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/json/o;->a()Lcom/transsion/json/r;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    throw p0

    .line 12
    :catch_0
    new-instance p2, Lcom/transsion/json/k;

    invoke-virtual {p1}, Lcom/transsion/json/o;->a()Lcom/transsion/json/r;

    throw p0

    .line 13
    :catch_1
    new-instance p2, Lcom/transsion/json/k;

    invoke-virtual {p1}, Lcom/transsion/json/o;->a()Lcom/transsion/json/r;

    throw p0

    .line 14
    :catch_2
    new-instance p2, Lcom/transsion/json/k;

    invoke-virtual {p1}, Lcom/transsion/json/o;->a()Lcom/transsion/json/r;

    throw p0

    .line 15
    :catch_3
    new-instance p2, Lcom/transsion/json/k;

    invoke-virtual {p1}, Lcom/transsion/json/o;->a()Lcom/transsion/json/r;

    throw p0

    :catch_4
    move-exception p0

    .line 16
    new-instance p2, Lcom/transsion/json/k;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/json/o;->a()Lcom/transsion/json/r;

    move-result-object p1

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    aput-object p1, p3, p4

    const-string p1, "%s: Could not find class %s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
