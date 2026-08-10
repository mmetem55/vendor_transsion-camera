.class public Lcom/transsion/json/Tson;
.super Ljava/lang/Object;
.source "transsion.java"


# direct methods
.method public static fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lcom/transsion/json/j;

    invoke-direct {v0}, Lcom/transsion/json/j;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/transsion/json/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "The Json is Null: "

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
