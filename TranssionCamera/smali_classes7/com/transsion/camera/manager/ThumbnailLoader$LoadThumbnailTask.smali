.class Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/ThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/transsion/camera/manager/ThumbnailItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mBucketIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;",
            ")V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mContentResolver:Ljava/lang/ref/WeakReference;

    .line 127
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mLoaderCallback:Ljava/lang/ref/WeakReference;

    .line 128
    iput-object p2, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;Lcom/transsion/camera/manager/ThumbnailLoader$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V

    return-void
.end method

.method private static getBitmapFromExif(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-static {p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBitmapFromExif fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 325
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromExif(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 328
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 330
    :try_start_0
    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromExif(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 328
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    .line 332
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 334
    :cond_2
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBitmapFromExif: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", path: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getBitmapFromVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-static {p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBitmapFromVideo fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x200

    .line 345
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createScaledBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    const-string v1, "r"

    .line 347
    invoke-virtual {p0, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 349
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createScaledBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 347
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    .line 351
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_2
    return-object p1
.end method

.method private getLatestMediaFromDatabase(Landroid/content/ContentResolver;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(media_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    move-result-object p0

    return-object p0
.end method

.method private getMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "external"

    .line 191
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "_id"

    const-string v6, "orientation"

    const-string v7, "datetaken"

    const-string v8, "_data"

    const-string v9, "media_type"

    const-string v10, "date_modified"

    const-string v11, "date_added"

    .line 193
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v5

    .line 202
    iget-object v2, v0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") AND ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, v9

    .line 204
    :goto_0
    iget-object v6, v0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    const/16 v6, 0x3d

    const-string v7, "bucket_id"

    if-nez v3, :cond_0

    .line 206
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v8, " OR "

    .line 208
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ")"

    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object/from16 v6, p2

    move-object v2, v6

    :goto_2
    const-string v8, "date_modified DESC,datetaken DESC,_id DESC"

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-object v6, v2

    .line 220
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 221
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v0, 0x1

    .line 223
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v0, 0x2

    .line 224
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/4 v0, 0x3

    .line 225
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/4 v0, 0x4

    .line 226
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/4 v0, 0x5

    .line 227
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/4 v0, 0x6

    .line 228
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 229
    new-instance v0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    .line 230
    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    move-object v11, v0

    invoke-direct/range {v11 .. v23}, Lcom/transsion/camera/manager/ThumbnailLoader$Media;-><init>(JIJJJLandroid/net/Uri;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 236
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v3, v10

    .line 233
    :goto_5
    :try_start_2
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v4, "query Thumbnail fail: "

    invoke-static {v1, v4, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_4

    goto :goto_4

    .line 240
    :cond_4
    :goto_6
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLatestMediaFromDatabase, media: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", selection: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v10

    :catchall_1
    move-exception v0

    move-object v10, v3

    :goto_7
    if-eqz v10, :cond_5

    .line 236
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_5
    throw v0
.end method

.method private getMediaFromDatabaseByUri(Landroid/content/ContentResolver;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    move-result-object p0

    return-object p0
.end method

.method private static getThumbnailFromMedia(Lcom/transsion/camera/manager/ThumbnailLoader$Media;Landroid/content/ContentResolver;)Lcom/transsion/camera/manager/ThumbnailItem;
    .locals 11

    const-string v0, "%"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 248
    :cond_0
    new-instance v2, Lcom/transsion/camera/manager/ThumbnailItem;

    invoke-direct {v2}, Lcom/transsion/camera/manager/ThumbnailItem;-><init>()V

    .line 252
    :try_start_0
    iget v3, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->mediaType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    const-string v5, "external"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    .line 253
    :try_start_1
    invoke-static {v5}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 254
    iget-wide v8, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->id:J

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    .line 256
    iget-object v5, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {p1, v5, v3}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getBitmapFromExif(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 265
    iget-object v5, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 266
    iget-object v5, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getExternalStoragePublicDirectory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Camera"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 268
    iget-object v3, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 269
    aget-object v5, v3, v6

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v7

    aget-object v9, v3, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 270
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "content://com.android.externalstorage.documents/tree/%1$s%2$s3A/document/%3$s%4$s3ADCIM%5$s2FCamera%6$s2F%7$s"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v6

    aput-object v0, v10, v7

    const/4 v6, 0x2

    aput-object v5, v10, v6

    aput-object v0, v10, v4

    const/4 v4, 0x4

    aput-object v0, v10, v4

    const/4 v4, 0x5

    aput-object v0, v10, v4

    const/4 v0, 0x6

    aget-object v3, v3, v7

    aput-object v3, v10, v0

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$400()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 273
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$400()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 280
    :cond_2
    :goto_0
    iput-object v3, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    :cond_3
    if-ne v3, v4, :cond_6

    .line 282
    invoke-static {v5}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 285
    iget-wide v3, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->id:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    iget-object v0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$400()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_5

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    iget-object v3, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0, v3}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getBitmapFromVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    :cond_5
    invoke-static {v0, v6}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 304
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v3, "getThumbnailFromMedia fail: "

    invoke-static {v0, v3, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$Media;->uri:Landroid/net/Uri;

    iput-object p0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    .line 309
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getThumbnailFromMedia item.mBitmap:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , item.mUri:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    :cond_6
    :goto_2
    iget-object p0, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_7

    .line 313
    iput-object v1, v2, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    :cond_7
    return-object v2
.end method

.method private static isValid(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "./"

    .line 360
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "~/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/transsion/camera/manager/ThumbnailItem;
    .locals 2

    .line 143
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[doInBackground] LoadThumbnailTask start."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 145
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[doInBackground] LoadThumbnailTask is cancelled, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mContentResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentResolver;

    if-nez p1, :cond_1

    return-object v0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 154
    invoke-direct {p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getMediaFromDatabaseByUri(Landroid/content/ContentResolver;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    move-result-object v1

    goto :goto_0

    .line 156
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getLatestMediaFromDatabase(Landroid/content/ContentResolver;)Lcom/transsion/camera/manager/ThumbnailLoader$Media;

    move-result-object v1

    .line 158
    :goto_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 159
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[doInBackground] LoadThumbnailTask is cancelled after getLatestMedia, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 163
    :cond_3
    invoke-static {v1, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->getThumbnailFromMedia(Lcom/transsion/camera/manager/ThumbnailLoader$Media;Landroid/content/ContentResolver;)Lcom/transsion/camera/manager/ThumbnailItem;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/transsion/camera/manager/ThumbnailItem;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled()V
    .locals 1

    .line 138
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "[onCancelled] LoadThumbnailTask is cancelled."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Lcom/transsion/camera/manager/ThumbnailItem;)V
    .locals 3

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->mLoaderCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;

    .line 170
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doInBackground] LoadThumbnailTask done. callback =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", thumbnailItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 172
    invoke-interface {p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;->onTaskDone(Lcom/transsion/camera/manager/ThumbnailItem;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Lcom/transsion/camera/manager/ThumbnailItem;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->onPostExecute(Lcom/transsion/camera/manager/ThumbnailItem;)V

    return-void
.end method
