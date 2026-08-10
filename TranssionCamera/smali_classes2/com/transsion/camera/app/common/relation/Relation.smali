.class public Lcom/transsion/camera/app/common/relation/Relation;
.super Ljava/lang/Object;
.source "Relation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/relation/Relation$Body;,
        Lcom/transsion/camera/app/common/relation/Relation$Header;,
        Lcom/transsion/camera/app/common/relation/Relation$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/app/common/relation/Relation$Body;",
            ">;"
        }
    .end annotation
.end field

.field private mHeader:Lcom/transsion/camera/app/common/relation/Relation$Header;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/relation/Relation;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/relation/Relation;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/relation/Relation$1;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/common/relation/Relation;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/relation/Relation;->createHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addBody(Lcom/transsion/camera/app/common/relation/Relation$Body;)V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 296
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Header;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/app/common/relation/Relation$Header;-><init>(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/relation/Relation;->mHeader:Lcom/transsion/camera/app/common/relation/Relation$Header;

    return-void
.end method

.method private findBody(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Body;
    .locals 3

    const/4 v0, 0x0

    .line 304
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/transsion/camera/app/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/relation/Relation$Body;

    .line 306
    iget-object v2, v1, Lcom/transsion/camera/app/common/relation/Relation$Body;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private setHeader(Lcom/transsion/camera/app/common/relation/Relation$Header;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/transsion/camera/app/common/relation/Relation;->mHeader:Lcom/transsion/camera/app/common/relation/Relation$Header;

    return-void
.end method


# virtual methods
.method public addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 274
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->findBody(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Body;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iput-object p2, v0, Lcom/transsion/camera/app/common/relation/Relation$Body;->value:Ljava/lang/String;

    .line 277
    iput-object p3, v0, Lcom/transsion/camera/app/common/relation/Relation$Body;->entryValues:Ljava/lang/String;

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Body;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/camera/app/common/relation/Relation$Body;-><init>(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public copy()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 257
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/Relation;-><init>()V

    .line 258
    iget-object v1, p0, Lcom/transsion/camera/app/common/relation/Relation;->mHeader:Lcom/transsion/camera/app/common/relation/Relation$Header;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Header;->copy()Lcom/transsion/camera/app/common/relation/Relation$Header;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->setHeader(Lcom/transsion/camera/app/common/relation/Relation$Header;)V

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/relation/Relation$Body;

    .line 260
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Body;->copy()Lcom/transsion/camera/app/common/relation/Relation$Body;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Lcom/transsion/camera/app/common/relation/Relation$Body;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getBodyEntryValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->findBody(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Body;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/Relation$Body;->entryValues:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBodyKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/relation/Relation$Body;

    .line 192
    iget-object v1, v1, Lcom/transsion/camera/app/common/relation/Relation$Body;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getBodyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->findBody(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Body;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/Relation$Body;->value:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeaderKey()Ljava/lang/String;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/Relation;->mHeader:Lcom/transsion/camera/app/common/relation/Relation$Header;

    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/Relation$Header;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/Relation;->mHeader:Lcom/transsion/camera/app/common/relation/Relation$Header;

    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/Relation$Header;->value:Ljava/lang/String;

    return-object p0
.end method

.method public removeBody(Ljava/lang/String;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->findBody(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Body;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/Relation;->mBodyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
