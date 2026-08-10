.class Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;
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
        "Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;",
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
            "Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->mContentResolver:Ljava/lang/ref/WeakReference;

    .line 122
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->mLoaderCallback:Ljava/lang/ref/WeakReference;

    .line 123
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;)V

    .line 128
    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;Landroid/net/Uri;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;Landroid/net/Uri;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;)V

    return-void
.end method

.method private getBitmapFromExif(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 313
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 314
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmapFromExif fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 319
    :cond_0
    :try_start_0
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    invoke-virtual {p0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 325
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 321
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method private getLatestMediaFromDatabase(Landroid/content/ContentResolver;)Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(media_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 179
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

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->getMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;

    move-result-object p0

    return-object p0
.end method

.method private getMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "external"

    .line 186
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v2, "_id"

    const-string v3, "orientation"

    const-string v5, "datetaken"

    const-string v6, "_data"

    const-string v7, "media_type"

    .line 188
    filled-new-array {v2, v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    .line 195
    iget-object v2, v0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 196
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

    .line 197
    :goto_0
    iget-object v6, v0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    const/16 v6, 0x3d

    const-string v7, "bucket_id"

    if-nez v3, :cond_0

    .line 199
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v8, " OR "

    .line 201
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ")"

    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object/from16 v6, p2

    move-object v2, v6

    :goto_2
    const-string v8, "datetaken DESC,_id DESC"

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-object v6, v2

    .line 213
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 214
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v0, 0x1

    .line 216
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v0, 0x2

    .line 217
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/4 v0, 0x3

    .line 218
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 219
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;

    .line 220
    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    const/4 v1, 0x4

    .line 221
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;-><init>(JIJLandroid/net/Uri;ILjava/lang/String;)V
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

    .line 227
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v3, v10

    .line 224
    :goto_5
    :try_start_2
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v4, "query Thumbnail fail: "

    invoke-static {v1, v4, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_4

    goto :goto_4

    .line 231
    :cond_4
    :goto_6
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 227
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_5
    throw v0
.end method

.method private getMediaFromDatabaseByUri(Landroid/content/ContentResolver;)Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->getMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;

    move-result-object p0

    return-object p0
.end method

.method private getThumbnailFromMedia(Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;Landroid/content/ContentResolver;)Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;
    .locals 10

    const-string v0, "%"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 239
    :cond_0
    new-instance v2, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;

    invoke-direct {v2}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;-><init>()V

    .line 243
    :try_start_0
    iget v3, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->mediaType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    const-string v5, "external"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    .line 244
    :try_start_1
    invoke-static {v5}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 245
    iget-wide v8, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->id:J

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;->mUri:Landroid/net/Uri;

    .line 247
    iget-object v3, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->getBitmapFromExif(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_2

    .line 256
    iget-object v3, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getExternalStoragePublicDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Camera"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 258
    iget-object p0, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->access$300()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 259
    aget-object p1, p0, v6

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v7

    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 260
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "content://com.android.externalstorage.documents/tree/%1$s%2$s3A/document/%3$s%4$s3ADCIM%5$s2FCamera%6$s2F%7$s"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    aput-object v0, v8, v7

    const/4 v6, 0x2

    aput-object p1, v8, v6

    aput-object v0, v8, v4

    const/4 p1, 0x4

    aput-object v0, v8, p1

    const/4 p1, 0x5

    aput-object v0, v8, p1

    const/4 p1, 0x6

    aget-object p0, p0, v7

    aput-object p0, v8, p1

    invoke-static {v3, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 261
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->access$400(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget-wide p0, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->id:J

    invoke-static {p2, p0, p1, v7, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 276
    :cond_2
    :goto_0
    iput-object p0, v2, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_3
    if-ne v3, v4, :cond_6

    .line 278
    invoke-static {v5}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 281
    iget-wide v3, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->id:J

    invoke-static {p0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v2, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;->mUri:Landroid/net/Uri;

    .line 286
    iget-object p0, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 287
    new-instance p0, Ljava/io/File;

    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 291
    iget-wide v3, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->id:J

    invoke-static {p2, v3, v4, v7, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    if-nez p0, :cond_5

    .line 298
    iget-object p0, p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    const/16 p1, 0x200

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createScaledBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 300
    :cond_5
    invoke-static {p0, v6}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v2, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 303
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "getThumbnailFromMedia fail: "

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    :cond_6
    :goto_2
    iget-object p0, v2, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_7

    .line 307
    iput-object v1, v2, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;->mUri:Landroid/net/Uri;

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

    .line 334
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
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;
    .locals 3

    .line 138
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[doInBackground] LoadThumbnailTask start."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 140
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[doInBackground] LoadThumbnailTask is cancelled, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->mContentResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentResolver;

    if-nez p1, :cond_1

    return-object v0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 149
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->getMediaFromDatabaseByUri(Landroid/content/ContentResolver;)Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->getLatestMediaFromDatabase(Landroid/content/ContentResolver;)Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;

    move-result-object v1

    .line 153
    :goto_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[doInBackground] LoadThumbnailTask is cancelled after getLatestMedia, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 158
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->getThumbnailFromMedia(Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;Landroid/content/ContentResolver;)Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled()V
    .locals 1

    .line 133
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "[onCancelled] LoadThumbnailTask is cancelled."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;)V
    .locals 3

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->mLoaderCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;

    .line 165
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doInBackground] LoadThumbnailTask done. callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 167
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;->onTaskDone(Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;->onPostExecute(Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;)V

    return-void
.end method
