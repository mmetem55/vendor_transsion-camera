.class public Lcom/transsion/camera/app/common/setting/SettingAccessManager;
.super Ljava/lang/Object;
.source "SettingAccessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAccessCountSyncObject:Ljava/lang/Object;

.field private mAccessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mActiveAccessCount:I

.field private mConditionVariable:Landroid/os/ConditionVariable;

.field private mInControlling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessCountSyncObject:Ljava/lang/Object;

    .line 19
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mConditionVariable:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public declared-synchronized activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 40
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;Z)Z
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 54
    :try_start_0
    sget-object p2, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[activeAccess], access:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->access$000(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInControlling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mInControlling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mInControlling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 58
    monitor-exit p0

    return p1

    .line 61
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessCountSyncObject:Ljava/lang/Object;

    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    :try_start_2
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->access$100(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget p1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    .line 65
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 65
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;
    .locals 1

    .line 28
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;-><init>(Lcom/transsion/camera/app/common/setting/SettingAccessManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V
    .locals 1

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;Z)V

    return-void
.end method

.method public recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 86
    sget-object p2, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[recycleAccess], access:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->access$000(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessCountSyncObject:Ljava/lang/Object;

    monitor-enter p2

    .line 89
    :try_start_0
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->access$200(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    iget p1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    .line 92
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget p1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    if-gtz p1, :cond_1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 92
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public declared-synchronized startControl()V
    .locals 3

    monitor-enter p0

    .line 104
    :try_start_0
    sget-object v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[startControl]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mInControlling:Z

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessCountSyncObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    if-eqz v2, :cond_0

    .line 109
    invoke-static {v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->access$200(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    goto :goto_0

    .line 112
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 114
    sget-object v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startControl], mActiveAccessCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    iget v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    if-lez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 112
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopControl()V
    .locals 2

    monitor-enter p0

    .line 126
    :try_start_0
    sget-object v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[stopControl]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mInControlling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
