.class public Lcom/transsion/camera/app/common/relation/RelationGroup;
.super Ljava/lang/Object;
.source "RelationGroup.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBodyKeys:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderKey:Ljava/lang/String;

.field private final mRelationList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/app/common/relation/Relation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/relation/RelationGroup;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/relation/RelationGroup;->mBodyKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/relation/RelationGroup;->mRelationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private buildEmptyRelation(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 1

    .line 75
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/RelationGroup;->mBodyKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    .line 77
    invoke-virtual {v0, p1, p2, p2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method private buildNewRelation(Lcom/transsion/camera/app/common/relation/Relation;)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 4

    .line 65
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/relation/Relation;->getHeaderKey()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/relation/Relation;->getHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/RelationGroup;->mBodyKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyEntryValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/RelationGroup;->mRelationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/common/relation/RelationGroup;->mRelationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/relation/Relation;

    .line 52
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation;->getHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->buildNewRelation(Lcom/transsion/camera/app/common/relation/Relation;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 59
    iget-object p2, p0, Lcom/transsion/camera/app/common/relation/RelationGroup;->mHeaderKey:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->buildEmptyRelation(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public removeBodyKey(Ljava/lang/String;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/RelationGroup;->mBodyKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/relation/RelationGroup;->mRelationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBodyKeys(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 24
    sget-object p0, Lcom/transsion/camera/app/common/relation/RelationGroup;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setBodyKeys] with Null bodyKeys!!!!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ","

    .line 28
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/transsion/camera/app/common/relation/RelationGroup;->mBodyKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHeaderKey(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/app/common/relation/RelationGroup;->mHeaderKey:Ljava/lang/String;

    return-void
.end method
