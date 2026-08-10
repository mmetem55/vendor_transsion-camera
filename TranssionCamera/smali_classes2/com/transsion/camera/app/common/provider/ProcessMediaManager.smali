.class public final Lcom/transsion/camera/app/common/provider/ProcessMediaManager;
.super Ljava/lang/Object;
.source "ProcessMediaManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mIsProcessingUri:Z

.field private static final mProcessMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/provider/ProcessMediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProcessMediaManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mIsProcessingUri:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getProcessStatus()Z
    .locals 3

    .line 120
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProcessStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mIsProcessingUri:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    sget-boolean v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mIsProcessingUri:Z

    return v0
.end method

.method public static declared-synchronized getProcessingMedia()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/provider/ProcessMediaItem;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 39
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setProcessStatus(Z)V
    .locals 3

    .line 115
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProcessStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    sput-boolean p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mIsProcessingUri:Z

    return-void
.end method


# virtual methods
.method public add(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)Z
    .locals 5

    .line 50
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->notifyProcessingUri(J)V

    const/4 p0, 0x1

    .line 54
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addCaptureThumbInfo(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V
    .locals 4

    .line 125
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCaptureInfo,info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAllCaptureThumbInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;",
            ">;"
        }
    .end annotation

    .line 148
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFirstAndPreRemove()Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
    .locals 5

    .line 75
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    .line 78
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstAndPreRemove type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p0, :cond_1

    .line 80
    monitor-exit v0

    return-object v2

    .line 83
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getFirstAndPreRemove, mCaptureInfoList is null!!!"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    :cond_1
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 88
    iget-boolean v3, v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    if-nez v3, :cond_2

    const/4 p0, 0x1

    .line 89
    iput-boolean p0, v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    .line 90
    monitor-exit v0

    return-object v1

    .line 94
    :cond_3
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getFirstAndPreRemove return null"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFirstCaptureThumbInfo(Z)Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;
    .locals 3

    .line 166
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    if-nez p1, :cond_1

    .line 169
    monitor-exit v0

    return-object v1

    .line 170
    :cond_1
    iget v2, v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    if-lez v2, :cond_0

    iget-boolean v2, v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->preProcessed:Z

    if-nez v2, :cond_0

    const/4 p0, 0x1

    .line 171
    iput-boolean p0, v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->preProcessed:Z

    .line 172
    monitor-exit v0

    return-object v1

    .line 176
    :cond_2
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getFirstCaptureThumbInfo, mCaptureInfoList is null!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 177
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLatestCaptureThumbInfo()Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;
    .locals 2

    .line 154
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    monitor-exit v0

    return-object p0

    .line 160
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getLatestCaptureThumbInfo, mCaptureInfoList is null!!!"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 161
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProcessMediaItem(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
    .locals 4

    .line 59
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    .line 60
    :try_start_0
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 61
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getCaptureThumbInfo()Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 65
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRemainingMediaSize()I
    .locals 3

    .line 182
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    const/4 v0, 0x0

    .line 184
    :try_start_0
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 186
    iget-boolean v2, v2, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 192
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyProcessingUri(J)V
    .locals 1

    const-string v0, "external"

    .line 109
    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 111
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyProcessingUri: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public remove(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V
    .locals 3

    .line 141
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ---> mCaptureInfoList"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V
    .locals 5

    .line 101
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "--> mProcessMediaList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->notifyProcessingUri(J)V

    .line 105
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeCaptureThumbInfo()V
    .locals 4

    .line 132
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 135
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCaptureInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
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
