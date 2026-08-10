.class public Lcom/transsion/camera/app/common/setting/SettingTable;
.super Ljava/lang/Object;
.source "SettingTable.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCaptureRequestGroup:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigParametersGroup:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewStatusGroup:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingListByType:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsByTypeSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/setting/SettingTable;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mConfigParametersGroup:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mCaptureRequestGroup:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mPreviewStatusGroup:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByTypeSync:Ljava/lang/Object;

    return-void
.end method

.method private addSettingByTypeSync(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByTypeSync:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    move-result-object v1

    invoke-interface {p0, v1, p1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public add(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .locals 2

    if-nez p1, :cond_0

    .line 29
    sget-object p0, Lcom/transsion/camera/app/common/setting/SettingTable;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[add] why pass NULL setting!!!!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 32
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SettingTable.add] setting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",Please check why you return NULL setting key or setting type!!!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public classify()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 48
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingTable;->addSettingByTypeSync(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    .line 50
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mConfigParametersGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mPreviewStatusGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public getAllConfigParametersSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mConfigParametersGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSettingListByType(Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByTypeSync:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    sget-object v2, Lcom/transsion/camera/app/common/setting/SettingTable$1;->$SwitchMap$com$transsion$camera$app$common$setting$ICameraSetting$SettingType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    sget-object p1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    sget-object v2, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-interface {p1, v2}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    sget-object p1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    sget-object v2, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-interface {p1, v2}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    sget-object p1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    :goto_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    .line 128
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAll()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingListByType:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mSettingsByKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mConfigParametersGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mCaptureRequestGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingTable;->mPreviewStatusGroup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
