.class public Lcom/transsion/camera/app/common/provider/FeatureProvider;
.super Ljava/lang/Object;
.source "FeatureProvider.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sCachedEntryClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/provider/IFeatureEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FeatureProvider"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->sCachedEntryClasses:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->loadFeatures(Landroid/content/Context;I)V

    return-void
.end method

.method public static cacheAllEntryClasses([Ljava/lang/String;)V
    .locals 1

    .line 153
    sget-object v0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->sCachedEntryClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->cacheClasses([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private loadBuildInFeatures(Landroid/content/Context;I)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/provider/IFeatureEntry;",
            ">;"
        }
    .end annotation

    .line 112
    sget-object p0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->sCachedEntryClasses:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->loadClasses(Ljava/util/List;Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    return-object p2

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 116
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->loadClasses([Ljava/lang/String;Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    return-object p2
.end method

.method private static loadClasses(Ljava/util/List;Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/provider/IFeatureEntry;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 140
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 142
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    if-eqz v2, :cond_0

    .line 144
    invoke-interface {v2}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static loadClasses([Ljava/lang/String;Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/provider/IFeatureEntry;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    if-eqz v5, :cond_0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    const/4 v7, 0x1

    aput-object v1, v6, v7

    .line 126
    invoke-static {v5, v6}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    if-eqz v5, :cond_0

    .line 128
    invoke-interface {v5}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v0, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private loadFeatures(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "FeatureProvider loadFeatures"

    .line 103
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->loadBuildInFeatures(Landroid/content/Context;I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 106
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method


# virtual methods
.method public createFeatureResources(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    .line 77
    invoke-interface {v1}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-interface {v1}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->initResource()V

    .line 79
    invoke-interface {v1}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_1
    sget-object p0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFeatureResources type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", size : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public createFeatureSync(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/provider/FeatureParameters;",
            ")TT;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    .line 40
    sget-object p2, Lcom/transsion/camera/app/common/provider/FeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[createFeatureSync],key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",entry = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    invoke-interface {p0, p3, p4}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->createFeature(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFeatures(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    const-string v0, "createFeatures"

    .line 57
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    .line 61
    invoke-interface {v1}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v1, p2}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->createFeature(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_1
    sget-object p0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createFeatures type = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", size : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-object v0
.end method

.method public destroyFeatureResources(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    .line 91
    invoke-interface {v0}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v0}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->unInitResource()V

    goto :goto_0

    .line 95
    :cond_1
    sget-object p0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyFeatureResources type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getAllEntryName()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public updateFeatureSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/IFeatureEntry;

    .line 49
    sget-object v0, Lcom/transsion/camera/app/common/provider/FeatureProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateFeatureSync],key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",entry = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/app/common/provider/IFeatureEntry;->updateFeature(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
