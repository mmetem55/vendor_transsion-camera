.class public Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;
.super Landroid/content/ContentProvider;
.source "ProcessPhotoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider$MyWriter;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProcessPhotoProvider"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private queryProcessMediaThumb(Ljava/lang/Long;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessingMedia()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 151
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 152
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryProcessMediaThumb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 153
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider$MyWriter;

    const/4 p1, 0x0

    invoke-direct {v7, p0, p1}, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider$MyWriter;-><init>(Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider$1;)V

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 156
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 9

    .line 124
    new-instance p0, Landroid/database/MatrixCursor;

    const-string v0, "media_store_id"

    const-string v1, "progress_status"

    const-string v2, "progress_percentage"

    const-string v3, "process_mode"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 131
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessingMedia()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    if-nez v2, :cond_2

    .line 132
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    :cond_2
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 134
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    .line 135
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getProcessStatus()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->getIdentifier()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    .line 136
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getPercentage()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 137
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getProcessMode()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 133
    invoke-virtual {p0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 139
    sget-object v5, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryProcessingMetadata,addRow: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_3
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryProcessingMetadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/MatrixCursor;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 145
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    return-object p0
.end method

.method private queryProcessingSpecialTypeId(Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 0

    .line 160
    new-instance p0, Landroid/database/MatrixCursor;

    const-string p1, "special_type_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 163
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    return-object p0
.end method

.method private querySpecialTypesVersion()Landroid/os/Bundle;
    .locals 2

    .line 118
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "version"

    const/4 v1, 0x4

    .line 119
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 45
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 46
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 47
    new-instance p2, Landroid/content/UriMatcher;

    const/4 v0, -0x1

    invoke-direct {p2, v0}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v0, "processing"

    const/4 v1, 0x1

    .line 48
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v0, "processing/#"

    const/4 v1, 0x2

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string p2, "type/#"

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "version"

    .line 56
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->querySpecialTypesVersion()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 109
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 98
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 104
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_0
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "r"

    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 89
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->queryProcessMediaThumb(Ljava/lang/Long;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 91
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 67
    sget-object p2, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "query uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 74
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->queryProcessingSpecialTypeId(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognized uri: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 114
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
