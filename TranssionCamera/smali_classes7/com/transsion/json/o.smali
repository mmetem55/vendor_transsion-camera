.class public Lcom/transsion/json/o;
.super Ljava/lang/Object;
.source "transsion.java"


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/transsion/json/r;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/transsion/json/p;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
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
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/o;->a:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/o;->b:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Lcom/transsion/json/r;

    invoke-direct {v0}, Lcom/transsion/json/r;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/o;->e:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/o;->d:Ljava/util/Map;

    .line 7
    new-instance p0, Lcom/transsion/json/a/b;

    invoke-direct {p0}, Lcom/transsion/json/a/b;-><init>()V

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p0, Lcom/transsion/json/a/l;

    invoke-direct {p0}, Lcom/transsion/json/a/l;-><init>()V

    const-class v1, Ljava/util/Collection;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p0, Lcom/transsion/json/a/l;

    invoke-direct {p0}, Lcom/transsion/json/a/l;-><init>()V

    const-class v1, Ljava/util/List;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p0, Lcom/transsion/json/a/o;

    invoke-direct {p0}, Lcom/transsion/json/a/o;-><init>()V

    const-class v1, Ljava/util/Set;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p0, Lcom/transsion/json/a/n;

    invoke-direct {p0}, Lcom/transsion/json/a/n;-><init>()V

    const-class v1, Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p0, Lcom/transsion/json/a/j;

    invoke-direct {p0}, Lcom/transsion/json/a/j;-><init>()V

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/transsion/json/a/j;

    invoke-direct {v1}, Lcom/transsion/json/a/j;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p0, Lcom/transsion/json/a/i;

    invoke-direct {p0}, Lcom/transsion/json/a/i;-><init>()V

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/transsion/json/a/i;

    invoke-direct {v1}, Lcom/transsion/json/a/i;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance p0, Lcom/transsion/json/a/g;

    invoke-direct {p0}, Lcom/transsion/json/a/g;-><init>()V

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/transsion/json/a/g;

    invoke-direct {v1}, Lcom/transsion/json/a/g;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance p0, Lcom/transsion/json/a/m;

    invoke-direct {p0}, Lcom/transsion/json/a/m;-><init>()V

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/transsion/json/a/m;

    invoke-direct {v1}, Lcom/transsion/json/a/m;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p0, Lcom/transsion/json/a/d;

    invoke-direct {p0}, Lcom/transsion/json/a/d;-><init>()V

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/transsion/json/a/d;

    invoke-direct {v1}, Lcom/transsion/json/a/d;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance p0, Lcom/transsion/json/a/c;

    invoke-direct {p0}, Lcom/transsion/json/a/c;-><init>()V

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/transsion/json/a/c;

    invoke-direct {v1}, Lcom/transsion/json/a/c;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance p0, Lcom/transsion/json/a/e;

    invoke-direct {p0}, Lcom/transsion/json/a/e;-><init>()V

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/transsion/json/a/e;

    invoke-direct {v1}, Lcom/transsion/json/a/e;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance p0, Lcom/transsion/json/a/h;

    invoke-direct {p0}, Lcom/transsion/json/a/h;-><init>()V

    const-class v1, Ljava/lang/Enum;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance p0, Lcom/transsion/json/a/p;

    invoke-direct {p0}, Lcom/transsion/json/a/p;-><init>()V

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance p0, Lcom/transsion/json/a/a;

    invoke-direct {p0}, Lcom/transsion/json/a/a;-><init>()V

    const-class v1, Ljava/lang/reflect/Array;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance p0, Lcom/transsion/json/a/k;

    invoke-direct {p0}, Lcom/transsion/json/a/k;-><init>()V

    const-class v1, Lcom/transsion/json/n;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/transsion/json/p;
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/transsion/json/o;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/json/p;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 80
    invoke-direct {p0, v3}, Lcom/transsion/json/o;->a(Ljava/lang/Class;)Lcom/transsion/json/p;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/json/o;->a(Ljava/lang/Class;)Lcom/transsion/json/p;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0
.end method

.method private a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 56
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 57
    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 58
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 59
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 60
    :cond_2
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_3

    .line 61
    const-class p0, Ljava/lang/reflect/Array;

    return-object p0

    .line 62
    :cond_3
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_4

    return-object v0

    .line 63
    :cond_4
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_5

    return-object v0

    .line 64
    :cond_5
    new-instance v0, Lcom/transsion/json/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":  Unknown type "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 65
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object p1

    .line 66
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    return-object p1

    .line 67
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    return-object p2

    .line 68
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    return-object p2

    .line 69
    :cond_3
    instance-of p2, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz p2, :cond_4

    .line 70
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 71
    :cond_4
    new-instance p2, Lcom/transsion/json/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":  Unknown generic type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Ljava/util/Map;Lcom/transsion/json/c;)Z
    .locals 1

    .line 83
    invoke-virtual {p2}, Lcom/transsion/json/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/json/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/json/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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

.method private b(Ljava/lang/Class;)Lcom/transsion/json/p;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/json/o;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/json/p;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/json/o;->d:Ljava/util/Map;

    const-class p1, Ljava/lang/reflect/Array;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/json/p;

    return-object p0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/json/o;->a(Ljava/lang/Class;)Lcom/transsion/json/p;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private b(Ljava/util/Map;Lcom/transsion/json/c;)Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p2}, Lcom/transsion/json/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/transsion/json/c;->a()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-direct {p0, p2}, Lcom/transsion/json/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/json/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/json/o;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/json/o;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/transsion/json/o;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a(Lcom/transsion/json/r;Lcom/transsion/json/p;)Lcom/transsion/json/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/json/o;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/transsion/json/p;)Lcom/transsion/json/o;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/json/o;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lcom/transsion/json/r;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    return-object p0
.end method

.method public a(Lcom/transsion/json/r;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/transsion/json/o;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/json/p;

    .line 104
    instance-of v1, v0, Lcom/transsion/json/a/f;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Lcom/transsion/json/a/f;

    invoke-virtual {v0}, Lcom/transsion/json/a/f;->a()Lcom/transsion/json/f;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/json/f;->a(Lcom/transsion/json/o;Lcom/transsion/json/r;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    return-object p2

    :cond_2
    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method protected a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3

    if-nez p2, :cond_2

    const-string p2, "class"

    .line 73
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 74
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 76
    :cond_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 77
    new-instance v0, Lcom/transsion/json/k;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "%s:  Could not load %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object p2
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/transsion/json/o;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/transsion/json/o;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/transsion/json/o;->b:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/transsion/json/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/json/o;->c(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/transsion/json/o;->b(Ljava/lang/Class;)Lcom/transsion/json/p;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v1, p0, p1, p2, v0}, Lcom/transsion/json/p;->a(Lcom/transsion/json/o;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p0, p0, Lcom/transsion/json/o;->b:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    return-object p1

    .line 11
    :cond_1
    :try_start_1
    new-instance p1, Lcom/transsion/json/k;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, ": + Could not find a suitable ObjectFactory for "

    :try_start_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 12
    iget-object p0, p0, Lcom/transsion/json/o;->b:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 13
    throw p1
.end method

.method public a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/transsion/json/o;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/json/b;->a(Ljava/lang/Class;)Lcom/transsion/json/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/transsion/json/b;->a()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/json/c;

    .line 39
    invoke-direct {p0, p1, v1}, Lcom/transsion/json/o;->a(Ljava/util/Map;Lcom/transsion/json/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-direct {p0, p1, v1}, Lcom/transsion/json/o;->b(Ljava/util/Map;Lcom/transsion/json/c;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    invoke-virtual {v1}, Lcom/transsion/json/c;->l()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    iget-object v3, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    invoke-virtual {v1}, Lcom/transsion/json/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/json/r;->a(Ljava/lang/String;)Lcom/transsion/json/r;

    .line 43
    invoke-virtual {v1}, Lcom/transsion/json/c;->g()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 44
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 45
    array-length v5, v1

    if-ne v5, v4, :cond_2

    const/4 v5, 0x0

    .line 46
    aget-object v1, v1, v5

    .line 47
    iget-object v6, p0, Lcom/transsion/json/o;->a:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v1, p3}, Lcom/transsion/json/o;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/transsion/json/o;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 48
    :cond_2
    new-instance p1, Lcom/transsion/json/k;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ":  Expected a single parameter for method "

    :try_start_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "."

    :try_start_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, " but got "

    :try_start_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_3
    invoke-virtual {v1}, Lcom/transsion/json/c;->c()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/transsion/json/o;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    invoke-virtual {v1}, Lcom/transsion/json/r;->c()Ljava/lang/String;

    goto/16 :goto_1

    .line 53
    :cond_5
    iget-object p1, p0, Lcom/transsion/json/o;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Lcom/transsion/json/k;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":  Exception while trying to invoke setter method."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 55
    new-instance p3, Lcom/transsion/json/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":  Could not access the no-arg constructor for "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/transsion/json/o;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/transsion/json/o;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    const-string v3, "keys"

    invoke-virtual {v2, v3}, Lcom/transsion/json/r;->a(Ljava/lang/String;)Lcom/transsion/json/r;

    .line 28
    invoke-virtual {p0, v1, p3}, Lcom/transsion/json/o;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    invoke-virtual {v3}, Lcom/transsion/json/r;->c()Ljava/lang/String;

    .line 30
    iget-object v3, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    const-string v4, "values"

    invoke-virtual {v3, v4}, Lcom/transsion/json/r;->a(Ljava/lang/String;)Lcom/transsion/json/r;

    .line 31
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/transsion/json/o;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    iget-object v3, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    invoke-virtual {v3}, Lcom/transsion/json/r;->c()Ljava/lang/String;

    .line 33
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/transsion/json/o;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 35
    iget-object p0, p0, Lcom/transsion/json/o;->b:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    return-object p2
.end method

.method public a(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>(",
            "Ljava/util/Collection;",
            "TT;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 14
    instance-of v0, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 15
    check-cast p3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/transsion/json/o;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/transsion/json/o;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0}, Lcom/transsion/json/o;->a()Lcom/transsion/json/r;

    move-result-object v0

    const-string v1, "values"

    invoke-virtual {v0, v1}, Lcom/transsion/json/r;->a(Ljava/lang/String;)Lcom/transsion/json/r;

    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 20
    invoke-virtual {p0, v0, p3}, Lcom/transsion/json/o;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/json/o;->a()Lcom/transsion/json/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/json/r;->c()Ljava/lang/String;

    .line 22
    iget-object p1, p0, Lcom/transsion/json/o;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 23
    iget-object p0, p0, Lcom/transsion/json/o;->b:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    return-object p2
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Class;)Lcom/transsion/json/k;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/json/k;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/json/o;->c:Lcom/transsion/json/r;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "%s:  Can not convert %s into %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
