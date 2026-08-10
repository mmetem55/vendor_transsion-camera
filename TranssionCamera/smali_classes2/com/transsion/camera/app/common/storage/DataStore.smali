.class public Lcom/transsion/camera/app/common/storage/DataStore;
.super Ljava/lang/Object;
.source "DataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlobalKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private final mPrefWrapperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mLock:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mPrefWrapperMap:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mGlobalKeys:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/storage/DataStore;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/storage/DataStore;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addFrontPreferenceWrapper()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mPrefWrapperMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mPrefWrapperMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "_preferences_1"

    if-eqz v2, :cond_1

    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    .line 138
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;

    const-string v0, "_saving_timestamp1"

    .line 139
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;

    const-string v0, "_facing_preferences_1"

    .line 140
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;

    :cond_2
    return-void
.end method

.method private getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mPrefWrapperMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mPrefWrapperMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sortSettingDesByTimestamp(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 150
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 151
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    .line 155
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-lez v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_2
    if-ne v2, v4, :cond_2

    .line 162
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 164
    :cond_2
    invoke-interface {p2, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    invoke-interface {p3, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_facing_preferences_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraScope(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_preferences_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalScope()Ljava/lang/String;
    .locals 0

    const-string p0, "_global_scope"

    return-object p0
.end method

.method public getSettingsKeepSavingTime(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_saving_timestamp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;

    move-result-object p1

    const-string v0, "_global_scope_saving_timestamp"

    .line 85
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 89
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->access$200(Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->sortSettingDesByTimestamp(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 91
    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->access$200(Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->sortSettingDesByTimestamp(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mGlobalKeys:Ljava/util/List;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mGlobalKeys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p3, "_global_scope"

    .line 77
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;

    move-result-object p0

    .line 79
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->access$100(Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 77
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public restoreSharedPreferences()Z
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->addFrontPreferenceWrapper()V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mPrefWrapperMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mPrefWrapperMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 112
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->clear()V

    .line 115
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 117
    monitor-exit v0

    return p0

    :cond_1
    const/4 p0, 0x0

    .line 119
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v0, "_global_scope"

    .line 54
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mGlobalKeys:Ljava/util/List;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mGlobalKeys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/DataStore;->mGlobalKeys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 61
    :cond_2
    :goto_0
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;

    move-result-object v0

    .line 62
    invoke-static {v0, p1, p2, p4}, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->access$000(Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p5, :cond_3

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_saving_timestamp"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;

    move-result-object p0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 68
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->access$000(Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method
