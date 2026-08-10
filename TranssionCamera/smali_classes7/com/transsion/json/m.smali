.class public Lcom/transsion/json/m;
.super Ljava/lang/Object;
.source "transsion.java"


# instance fields
.field private a:I

.field private final b:Ljava/io/Reader;

.field private c:C

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/transsion/json/m;->b:Ljava/io/Reader;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/transsion/json/m;->d:Z

    .line 4
    iput p1, p0, Lcom/transsion/json/m;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/json/m;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 30
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 31
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Lcom/transsion/json/k;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Duplicate key \""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x65

    if-eq v1, v2, :cond_0

    const/16 v2, 0x45

    if-eq v1, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, ""

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "true"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const-string v0, "false"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    const-string v0, "null"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/json/m;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 9
    new-instance p0, Lcom/transsion/json/n;

    invoke-direct {p0, p1}, Lcom/transsion/json/n;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4
    return-object p1
.end method

.method private f()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/transsion/json/m;->c()C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_8

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/json/m;->c()C

    move-result v1

    if-eqz v1, :cond_7

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_6

    .line 4
    invoke-virtual {p0}, Lcom/transsion/json/m;->a()V

    .line 5
    invoke-virtual {p0}, Lcom/transsion/json/m;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/transsion/json/m;->c()C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/transsion/json/m;->b()C

    move-result v3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/transsion/json/m;->a()V

    goto :goto_1

    :cond_0
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_5

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/json/m;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/transsion/json/m;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/transsion/json/m;->c()C

    move-result v1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_3

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    const-string v0, "Expected a \',\' or \'}\'"

    .line 11
    invoke-virtual {p0, v0}, Lcom/transsion/json/m;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/json/m;->c()C

    move-result v1

    if-ne v1, v2, :cond_4

    return-object v0

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/json/m;->a()V

    goto :goto_0

    :cond_5
    const-string v0, "Expected a \':\' after a key"

    .line 14
    invoke-virtual {p0, v0}, Lcom/transsion/json/m;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0

    :cond_6
    return-object v0

    :cond_7
    const-string v0, "A JSONObject text must end with \'}\'"

    .line 15
    invoke-virtual {p0, v0}, Lcom/transsion/json/m;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0

    :cond_8
    const-string v0, "A JSONObject text must begin with \'{\'"

    .line 16
    invoke-virtual {p0, v0}, Lcom/transsion/json/m;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/transsion/json/k;
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/json/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/json/m;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(C)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/json/k;
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/json/m;->b()C

    move-result v1

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    if-eq v1, v2, :cond_9

    const/16 v3, 0xd

    if-eq v1, v3, :cond_9

    const/16 v4, 0x5c

    if-eq v1, v4, :cond_1

    if-ne v1, p1, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/json/m;->b()C

    move-result v1

    const/16 v4, 0x62

    if-eq v1, v4, :cond_8

    const/16 v4, 0x66

    if-eq v1, v4, :cond_7

    const/16 v4, 0x6e

    if-eq v1, v4, :cond_6

    const/16 v2, 0x72

    if-eq v1, v2, :cond_5

    const/16 v2, 0x78

    const/16 v3, 0x10

    if-eq v1, v2, :cond_4

    const/16 v2, 0x74

    if-eq v1, v2, :cond_3

    const/16 v2, 0x75

    if-eq v1, v2, :cond_2

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    .line 21
    invoke-virtual {p0, v1}, Lcom/transsion/json/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    .line 23
    invoke-virtual {p0, v1}, Lcom/transsion/json/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 24
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    const/16 v1, 0xc

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    const/16 v1, 0x8

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_9
    const-string p1, "Unterminated string"

    .line 28
    invoke-virtual {p0, p1}, Lcom/transsion/json/m;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0
.end method

.method public a(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/json/k;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 5
    :cond_0
    new-array v0, p1, [C

    .line 6
    iget-boolean v1, p0, Lcom/transsion/json/m;->d:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 7
    iput-boolean v3, p0, Lcom/transsion/json/m;->d:Z

    .line 8
    iget-char v1, p0, Lcom/transsion/json/m;->c:C

    aput-char v1, v0, v3

    move v3, v2

    :cond_1
    :goto_0
    if-ge v3, p1, :cond_2

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/transsion/json/m;->b:Ljava/io/Reader;

    sub-int v4, p1, v3

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    add-int/2addr v3, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Lcom/transsion/json/k;

    invoke-direct {p1, p0}, Lcom/transsion/json/k;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 11
    :cond_2
    iget v1, p0, Lcom/transsion/json/m;->a:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/transsion/json/m;->a:I

    if-lt v3, p1, :cond_3

    sub-int/2addr p1, v2

    .line 12
    aget-char p1, v0, p1

    iput-char p1, p0, Lcom/transsion/json/m;->c:C

    .line 13
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_3
    const-string p1, "Substring bounds error"

    .line 14
    invoke-virtual {p0, p1}, Lcom/transsion/json/m;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/json/k;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/transsion/json/m;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/json/m;->a:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/transsion/json/m;->a:I

    .line 3
    iput-boolean v1, p0, Lcom/transsion/json/m;->d:Z

    return-void

    .line 4
    :cond_0
    new-instance p0, Lcom/transsion/json/k;

    const-string v0, "Stepping back two steps is not supported"

    invoke-direct {p0, v0}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/json/k;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/transsion/json/m;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iput-boolean v1, p0, Lcom/transsion/json/m;->d:Z

    .line 3
    iget-char v0, p0, Lcom/transsion/json/m;->c:C

    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Lcom/transsion/json/m;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/transsion/json/m;->a:I

    :cond_0
    return v0

    .line 6
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/json/m;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v0, :cond_2

    .line 7
    iput-char v1, p0, Lcom/transsion/json/m;->c:C

    return v1

    .line 8
    :cond_2
    iget v1, p0, Lcom/transsion/json/m;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/transsion/json/m;->a:I

    int-to-char v0, v0

    .line 9
    iput-char v0, p0, Lcom/transsion/json/m;->c:C

    return v0

    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Lcom/transsion/json/k;

    invoke-direct {v0, p0}, Lcom/transsion/json/k;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/json/k;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/json/m;->b()C

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    :cond_1
    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/json/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/json/m;->c()C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x27

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const-string v2, ",:]}/\\\"[{;=#"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/transsion/json/m;->b()C

    move-result v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/json/m;->a()V

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-direct {p0, v0}, Lcom/transsion/json/m;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "Missing value"

    .line 10
    invoke-virtual {p0, v0}, Lcom/transsion/json/m;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/json/m;->a()V

    .line 12
    invoke-direct {p0}, Lcom/transsion/json/m;->f()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/json/m;->a()V

    .line 14
    invoke-virtual {p0}, Lcom/transsion/json/m;->e()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4
    invoke-virtual {p0, v0}, Lcom/transsion/json/m;->a(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/transsion/json/m;->c()C

    move-result v1

    const/16 v2, 0x29

    const/16 v3, 0x5d

    const/16 v4, 0x5b

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/16 v4, 0x28

    if-ne v1, v4, :cond_8

    move v1, v2

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/json/m;->c()C

    move-result v4

    if-ne v4, v3, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/json/m;->a()V

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/json/m;->c()C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/transsion/json/m;->a()V

    const/4 v4, 0x0

    .line 7
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/json/m;->a()V

    .line 9
    invoke-virtual {p0}, Lcom/transsion/json/m;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/json/m;->c()C

    move-result v4

    if-eq v4, v2, :cond_6

    if-eq v4, v5, :cond_4

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_4

    if-ne v4, v3, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "Expected a \',\' or \']\'"

    .line 11
    invoke-virtual {p0, v0}, Lcom/transsion/json/m;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/json/m;->c()C

    move-result v4

    if-ne v4, v3, :cond_5

    return-object v0

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/json/m;->a()V

    goto :goto_1

    :cond_6
    :goto_3
    if-ne v1, v4, :cond_7

    return-object v0

    .line 14
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/json/m;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0

    :cond_8
    const-string v0, "A JSONArray text must start with \'[\'"

    .line 15
    invoke-virtual {p0, v0}, Lcom/transsion/json/m;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/json/m;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
