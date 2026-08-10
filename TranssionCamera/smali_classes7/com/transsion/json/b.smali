.class public Lcom/transsion/json/b;
.super Ljava/lang/Object;
.source "transsion.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/transsion/json/b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Class;

.field private final c:Lcom/transsion/json/b;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/json/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/transsion/json/b;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/json/b;->b:Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/json/b;->a(Ljava/lang/Class;)Lcom/transsion/json/b;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/json/b;->c:Lcom/transsion/json/b;

    .line 4
    invoke-direct {p0}, Lcom/transsion/json/b;->c()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/transsion/json/b;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/json/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/transsion/json/b;

    invoke-direct {v2, p0}, Lcom/transsion/json/b;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/json/b;

    return-object p0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/json/c;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/json/c;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lcom/transsion/json/b;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 4
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v5, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6
    iget-object v5, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/transsion/json/c;

    invoke-direct {v7, v4, p0}, Lcom/transsion/json/c;-><init>(Ljava/lang/reflect/Field;Lcom/transsion/json/b;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/transsion/json/b;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_b

    aget-object v3, v0, v2

    .line 8
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    .line 9
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_3

    .line 10
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    .line 11
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "is"

    const/4 v8, 0x3

    if-gt v6, v8, :cond_4

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_3

    :cond_4
    if-nez v4, :cond_8

    const-string v4, "get"

    .line 13
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 14
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/transsion/json/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    iget-object v5, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 16
    iget-object v5, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    new-instance v6, Lcom/transsion/json/c;

    invoke-direct {v6, v4, p0}, Lcom/transsion/json/c;-><init>(Ljava/lang/String;Lcom/transsion/json/b;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_5
    iget-object v5, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/json/c;

    invoke-virtual {v4, v3}, Lcom/transsion/json/c;->b(Ljava/lang/reflect/Method;)V

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x2

    .line 19
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/transsion/json/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20
    iget-object v5, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 21
    iget-object v5, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    new-instance v6, Lcom/transsion/json/c;

    invoke-direct {v6, v4, p0}, Lcom/transsion/json/c;-><init>(Ljava/lang/String;Lcom/transsion/json/b;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_7
    iget-object v5, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/json/c;

    invoke-virtual {v4, v3}, Lcom/transsion/json/c;->b(Ljava/lang/reflect/Method;)V

    goto :goto_3

    :cond_8
    const/4 v6, 0x1

    if-ne v4, v6, :cond_a

    const-string v4, "set"

    .line 23
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 24
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/transsion/json/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    iget-object v5, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 26
    iget-object v5, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    new-instance v6, Lcom/transsion/json/c;

    invoke-direct {v6, v4, p0}, Lcom/transsion/json/c;-><init>(Ljava/lang/String;Lcom/transsion/json/b;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_9
    iget-object v5, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/json/c;

    invoke-virtual {v4, v3}, Lcom/transsion/json/c;->a(Ljava/lang/reflect/Method;)V

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 28
    :cond_b
    iget-object p0, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/json/c;

    .line 30
    invoke-virtual {v0}, Lcom/transsion/json/c;->i()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_d
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/transsion/json/b;->b:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/transsion/json/c;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 6
    iget-object v1, p0, Lcom/transsion/json/b;->c:Lcom/transsion/json/b;

    :goto_0
    if-eqz v1, :cond_0

    .line 7
    iget-object v2, v1, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-direct {p0, v0, v2}, Lcom/transsion/json/b;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 8
    iget-object v1, v1, Lcom/transsion/json/b;->c:Lcom/transsion/json/b;

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public b()Lcom/transsion/json/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/json/b;->c:Lcom/transsion/json/b;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/transsion/json/c;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/json/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/transsion/json/b;->c:Lcom/transsion/json/b;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/transsion/json/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/json/b;->c:Lcom/transsion/json/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/json/b;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
