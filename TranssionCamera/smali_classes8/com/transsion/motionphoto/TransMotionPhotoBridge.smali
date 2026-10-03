.class public final Lcom/transsion/motionphoto/TransMotionPhotoBridge;
.super Ljava/lang/Object;
.source "TransMotionPhotoBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;
    }
.end annotation


# static fields
.field private static final KEYFRAME_MARGIN_MS:J = 0x4b0L

.field private static final LOCK:Ljava/lang/Object;

.field private static final POST_CAPTURE_MS:J = 0x5dcL

.field private static final PREF_NAME:Ljava/lang/String; = "transsion_motion_photo_prefs"

.field private static final PREVIEW_TIMEOUT_MS:J = 0x5dcL

.field private static final PRE_CAPTURE_MS:J = 0x5dcL

.field private static final SETTING_KEY:Ljava/lang/String; = "key_motion_photo"

.field private static final TAG:Ljava/lang/String; = "TransMotionPhotoBridge"

.field public static volatile enabled:Z

.field private static hasPending:Z

.field private static pendingRetainKey:J

.field private static pendingRotation:I

.field private static pendingShutterUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->enabled:Z

    .line 41
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->LOCK:Ljava/lang/Object;

    .line 42
    sput-boolean v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->hasPending:Z

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->pendingShutterUs:J

    .line 44
    sput-wide v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->pendingRetainKey:J

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->pendingRotation:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/motionphoto/PreviewFrameEncoder;Lcom/transsion/motionphoto/AudioFrameEncoder;Ljava/lang/String;JI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-static/range {p0 .. p5}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->finalizeMotionPhoto(Lcom/transsion/motionphoto/PreviewFrameEncoder;Lcom/transsion/motionphoto/AudioFrameEncoder;Ljava/lang/String;JI)V

    return-void
.end method

.method public static currentApplication()Landroid/content/Context;
    .registers 5

    .line 415
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 416
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 417
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1d

    check-cast v1, Landroid/app/Application;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    move-object v0, v1

    :cond_1d
    return-object v0

    .line 418
    :catchall_1e
    move-exception v1

    .line 419
    const-string v2, "TransMotionPhotoBridge"

    const-string v3, "could not resolve current application context"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    return-object v0
.end method

.method private static determineRotation(Ljava/lang/String;III)I
    .registers 9

    .line 298
    nop

    .line 300
    const/16 v0, 0x5a

    const/4 v1, -0x1

    if-eqz p1, :cond_13

    if-eq p1, v0, :cond_13

    const/16 v2, 0xb4

    if-eq p1, v2, :cond_13

    const/16 v2, 0x10e

    if-ne p1, v2, :cond_11

    goto :goto_13

    :cond_11
    move p1, v1

    goto :goto_14

    .line 301
    :cond_13
    :goto_13
    nop

    .line 304
    :goto_14
    if-ne p1, v1, :cond_1d

    .line 305
    invoke-static {p0}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->readRotationDegrees(Ljava/lang/String;)I

    move-result v2

    .line 306
    if-eqz v2, :cond_1d

    .line 307
    move p1, v2

    .line 312
    :cond_1d
    const/4 v2, 0x0

    :try_start_1e
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 313
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 314
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 315
    iget p0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 316
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_4a

    .line 318
    if-le p2, p3, :cond_31

    move p2, v4

    goto :goto_32

    :cond_31
    move p2, v2

    .line 319
    :goto_32
    if-le v3, p0, :cond_35

    goto :goto_36

    :cond_35
    move v4, v2

    .line 321
    :goto_36
    if-eqz p2, :cond_3f

    if-eqz v4, :cond_3f

    .line 322
    if-eqz p1, :cond_3e

    if-ne p1, v1, :cond_47

    .line 323
    :cond_3e
    goto :goto_48

    .line 325
    :cond_3f
    if-nez p2, :cond_47

    if-nez v4, :cond_47

    .line 326
    if-ne p1, v1, :cond_47

    .line 327
    move v0, v2

    goto :goto_48

    .line 332
    :cond_47
    move v0, p1

    :goto_48
    move p1, v0

    goto :goto_52

    .line 330
    :catchall_4a
    move-exception p0

    .line 331
    const-string p2, "TransMotionPhotoBridge"

    const-string p3, "Failed to decode JPEG bounds for rotation validation"

    invoke-static {p2, p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    :goto_52
    if-ne p1, v1, :cond_55

    goto :goto_56

    :cond_55
    move v2, p1

    .line 335
    :goto_56
    rem-int/lit16 v2, v2, 0x168

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    return v2
.end method

.method private static finalizeMotionPhoto(Lcom/transsion/motionphoto/PreviewFrameEncoder;Lcom/transsion/motionphoto/AudioFrameEncoder;Ljava/lang/String;JI)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->videoFormatOrNull()Landroid/media/MediaFormat;

    move-result-object v2

    .line 200
    const-string v7, "TransMotionPhotoBridge"

    if-nez v2, :cond_10

    .line 201
    const-string v0, "encoder has no output format yet, skipping"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 205
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->allSamples()Ljava/util/List;

    move-result-object v1

    .line 206
    new-instance v3, Lcom/transsion/motionphoto/TransMotionPhotoBridge$2;

    invoke-direct {v3}, Lcom/transsion/motionphoto/TransMotionPhotoBridge$2;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 215
    const-wide/32 v3, 0x16e360

    sub-long v5, p3, v3

    .line 216
    add-long v3, p3, v3

    .line 218
    nop

    .line 219
    const/4 v8, 0x0

    move v9, v8

    :goto_26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3f

    .line 220
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    iget-object v10, v10, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v10, v10, v5

    if-ltz v10, :cond_3c

    .line 221
    nop

    .line 222
    goto :goto_40

    .line 219
    :cond_3c
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    :cond_3f
    const/4 v9, -0x1

    .line 225
    :goto_40
    if-gez v9, :cond_48

    .line 226
    const-string v0, "no buffered video samples around shutter timestamp, skipping"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 230
    :cond_48
    move v10, v9

    .line 231
    :goto_49
    if-lez v10, :cond_5a

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    invoke-static {v11}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->isKey(Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;)Z

    move-result v11

    if-nez v11, :cond_5a

    add-int/lit8 v10, v10, -0x1

    goto :goto_49

    .line 232
    :cond_5a
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    invoke-static {v11}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->isKey(Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;)Z

    move-result v11

    if-nez v11, :cond_7d

    .line 233
    nop

    .line 234
    :goto_67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_7c

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    invoke-static {v10}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->isKey(Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;)Z

    move-result v10

    if-nez v10, :cond_7c

    add-int/lit8 v9, v9, 0x1

    goto :goto_67

    .line 236
    :cond_7c
    move v10, v9

    :cond_7d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lt v10, v9, :cond_89

    .line 237
    const-string v0, "no keyframe in buffer, skipping"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 241
    :cond_89
    move-wide v11, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 242
    nop

    :goto_90
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_aa

    .line 243
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    .line 244
    iget-object v9, v4, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v13, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v9, v13, v11

    if-gtz v9, :cond_a7

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_a7
    add-int/lit8 v10, v10, 0x1

    goto :goto_90

    .line 246
    :cond_aa
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_d2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "too few video samples ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), skipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 251
    :cond_d2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioFormatOrNull()Landroid/media/MediaFormat;

    move-result-object v4

    .line 252
    move-wide v9, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 253
    if-eqz v4, :cond_106

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/motionphoto/AudioFrameEncoder;->allSamples()Ljava/util/List;

    move-result-object v1

    .line 255
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_106

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    .line 256
    iget-object v13, v6, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v13, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v13, v13, v9

    if-ltz v13, :cond_105

    iget-object v13, v6, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v13, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v13, v13, v11

    if-gtz v13, :cond_105

    .line 257
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_105
    goto :goto_e6

    .line 262
    :cond_106
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 264
    if-nez v1, :cond_112

    return-void

    .line 265
    :cond_112
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 266
    const/16 v10, 0x2e

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 267
    if-lez v10, :cond_122

    invoke-virtual {v6, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 268
    :cond_122
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "_mp.tmp.mp4"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "_mp.tmp.jpg"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->getEncWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->getEncHeight()I

    move-result v6

    move/from16 v12, p5

    invoke-static {v0, v12, v1, v6}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->determineRotation(Ljava/lang/String;III)I

    move-result v6

    .line 274
    move-object v1, v10

    :try_start_16b
    invoke-static/range {v1 .. v6}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->muxToMp4(Ljava/io/File;Landroid/media/MediaFormat;Ljava/util/List;Landroid/media/MediaFormat;Ljava/util/List;I)V

    .line 276
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    iget-object v2, v2, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v12, p3, v12

    .line 277
    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-gez v2, :cond_181

    move-wide v12, v14

    .line 278
    :cond_181
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-static {v0, v2, v4, v12, v13}, Lcom/transsion/motionphoto/MotionPhotoWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    .line 280
    if-eqz v2, :cond_1e9

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e9

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    cmp-long v2, v12, v14

    if-lez v2, :cond_1e9

    .line 281
    invoke-virtual {v11, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1e3

    .line 282
    invoke-static {v9}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->rescan(Ljava/io/File;)V

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrote Motion Photo with audio for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " video samples, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " audio samples)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ff

    .line 286
    :cond_1e3
    const-string v0, "failed to rename finished Motion Photo into place"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ff

    .line 289
    :cond_1e9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotionPhotoWriter.write failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ff
    .catchall {:try_start_16b .. :try_end_1ff} :catchall_207

    .line 292
    :goto_1ff
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 293
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 294
    nop

    .line 295
    return-void

    .line 292
    :catchall_207
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 293
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 294
    throw v0
.end method

.method private static isKey(Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;)Z
    .registers 2

    .line 193
    iget-object p0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget p0, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static muxToMp4(Ljava/io/File;Landroid/media/MediaFormat;Ljava/util/List;Landroid/media/MediaFormat;Ljava/util/List;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;",
            ">;",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 343
    new-instance v1, Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 346
    :try_start_a
    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p0

    .line 347
    nop

    .line 348
    if-eqz p3, :cond_1c

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 349
    invoke-virtual {v1, p3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    goto :goto_1d

    .line 352
    :cond_1c
    const/4 p1, -0x1

    :goto_1d
    invoke-virtual {v1, p5}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 353
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 355
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    iget-object p3, p3, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 357
    move p3, v0

    :goto_2e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    if-ge p3, p5, :cond_5c

    .line 358
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    .line 359
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 360
    iget-object v5, p5, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v5, p5, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v7, v2

    iget-object v5, p5, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 361
    iget-object p5, p5, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->data:[B

    invoke-static {p5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p5

    invoke-virtual {v1, p0, p5, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 357
    add-int/lit8 p3, p3, 0x1

    goto :goto_2e

    .line 364
    :cond_5c
    if-ltz p1, :cond_94

    .line 365
    nop

    :goto_5f
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_94

    .line 366
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    .line 367
    iget-object p2, p0, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide p2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v7, p2, v2

    .line 368
    const-wide/16 p2, 0x0

    cmp-long p2, v7, p2

    if-ltz p2, :cond_91

    .line 369
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 370
    iget-object p2, p0, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object p2, p0, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v9, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 371
    iget-object p0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->data:[B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v1, p1, p0, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 365
    :cond_91
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 376
    :cond_94
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V
    :try_end_97
    .catchall {:try_start_a .. :try_end_97} :catchall_9e

    .line 378
    :try_start_97
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_9d

    :catchall_9b
    move-exception v0

    .line 379
    nop

    .line 380
    :goto_9d
    return-void

    .line 378
    :catchall_9e
    move-exception v0

    move-object p0, v0

    :try_start_a0
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a4

    goto :goto_a5

    :catchall_a4
    move-exception v0

    .line 379
    :goto_a5
    throw p0
.end method

.method public static onJpegFileSaved(Ljava/lang/String;)V
    .registers 12

    .line 157
    :try_start_0
    sget-boolean v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->enabled:Z

    if-nez v0, :cond_5

    return-void

    .line 161
    :cond_5
    sget-object v1, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_5e

    .line 162
    :try_start_8
    sget-boolean v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->hasPending:Z

    if-nez v0, :cond_26

    .line 163
    const-string v0, "TransMotionPhotoBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no pending shutter, skipping Motion Photo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v1

    return-void

    .line 166
    :cond_26
    sget-wide v6, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->pendingShutterUs:J

    .line 167
    sget-wide v9, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->pendingRetainKey:J

    .line 168
    sget v8, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->pendingRotation:I

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->hasPending:Z

    .line 170
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_5a

    .line 171
    :try_start_30
    sget-object v3, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->ENCODER:Lcom/transsion/motionphoto/PreviewFrameEncoder;

    .line 172
    sget-object v4, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->AUDIO_ENCODER:Lcom/transsion/motionphoto/AudioFrameEncoder;

    .line 173
    const-string v0, "TransMotionPhotoBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpeg saved, finalizing in 1500ms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->HANDLER:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;

    move-object v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;-><init>(Lcom/transsion/motionphoto/PreviewFrameEncoder;Lcom/transsion/motionphoto/AudioFrameEncoder;Ljava/lang/String;JIJ)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_5e

    .line 189
    goto :goto_67

    .line 170
    :catchall_5a
    move-exception v0

    move-object p0, v0

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5a

    :try_start_5d
    throw p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    .line 187
    :catchall_5e
    move-exception v0

    move-object p0, v0

    .line 188
    const-string v0, "TransMotionPhotoBridge"

    const-string v1, "onJpegFileSaved"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    :goto_67
    return-void
.end method

.method public static onPreviewImage(Landroid/media/Image;)V
    .registers 5

    .line 100
    :try_start_0
    sget-boolean v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->enabled:Z

    if-nez v0, :cond_8

    .line 101
    invoke-static {}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->stopEncoders()V

    .line 102
    return-void

    .line 106
    :cond_8
    sget-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->HANDLER:Landroid/os/Handler;

    sget-object v1, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->WATCHDOG_RUNNABLE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    sget-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->HANDLER:Landroid/os/Handler;

    sget-object v1, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->WATCHDOG_RUNNABLE:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    sget-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->ENCODER:Lcom/transsion/motionphoto/PreviewFrameEncoder;

    .line 110
    invoke-virtual {v0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->isRunning()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->start()V

    .line 111
    :cond_23
    invoke-virtual {v0, p0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->onImage(Landroid/media/Image;)V

    .line 113
    sget-object p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->AUDIO_ENCODER:Lcom/transsion/motionphoto/AudioFrameEncoder;

    .line 114
    invoke-virtual {p0}, Lcom/transsion/motionphoto/AudioFrameEncoder;->isRunning()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/transsion/motionphoto/AudioFrameEncoder;->start()V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    .line 117
    :cond_31
    goto :goto_3a

    .line 115
    :catchall_32
    move-exception p0

    .line 116
    const-string v0, "TransMotionPhotoBridge"

    const-string v1, "onPreviewImage"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :goto_3a
    return-void
.end method

.method public static onShutterCaptured(Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 12

    .line 122
    :try_start_0
    sget-boolean v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->enabled:Z

    if-nez v0, :cond_5

    return-void

    .line 123
    :cond_5
    sget-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->ENCODER:Lcom/transsion/motionphoto/PreviewFrameEncoder;

    .line 124
    invoke-virtual {v0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->isRunning()Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 126
    :cond_e
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 127
    const/4 v2, 0x1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_24

    return-void

    .line 129
    :cond_24
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 130
    if-nez v3, :cond_2f

    return-void

    .line 131
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 132
    const-wide/32 v5, 0x2932e0

    sub-long v5, v3, v5

    .line 134
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 135
    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_4f

    :cond_4e
    const/4 p0, -0x1

    .line 137
    :goto_4f
    sget-object v7, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v7
    :try_end_52
    .catchall {:try_start_0 .. :try_end_52} :catchall_a9

    .line 138
    :try_start_52
    sget-boolean v8, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->hasPending:Z

    if-eqz v8, :cond_62

    .line 139
    sget-wide v8, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->pendingRetainKey:J

    invoke-virtual {v0, v8, v9}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->releaseRetention(J)V

    .line 140
    sget-object v8, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->AUDIO_ENCODER:Lcom/transsion/motionphoto/AudioFrameEncoder;

    sget-wide v9, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->pendingRetainKey:J

    invoke-virtual {v8, v9, v10}, Lcom/transsion/motionphoto/AudioFrameEncoder;->releaseRetention(J)V

    .line 142
    :cond_62
    invoke-virtual {v0, v5, v6}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->retainFrom(J)V

    .line 143
    sget-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->AUDIO_ENCODER:Lcom/transsion/motionphoto/AudioFrameEncoder;

    invoke-virtual {v0, v5, v6}, Lcom/transsion/motionphoto/AudioFrameEncoder;->retainFrom(J)V

    .line 144
    sput-wide v3, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->pendingShutterUs:J

    .line 145
    sput-wide v5, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->pendingRetainKey:J

    .line 146
    sput p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->pendingRotation:I

    .line 147
    sput-boolean v2, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->hasPending:Z

    .line 148
    monitor-exit v7
    :try_end_73
    .catchall {:try_start_52 .. :try_end_73} :catchall_a6

    .line 149
    :try_start_73
    const-string v0, "TransMotionPhotoBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shutter captured at "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "us (intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_73 .. :try_end_a5} :catchall_a9

    .line 152
    goto :goto_b1

    .line 148
    :catchall_a6
    move-exception p0

    :try_start_a7
    monitor-exit v7
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw p0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a9

    .line 150
    :catchall_a9
    move-exception p0

    .line 151
    const-string v0, "TransMotionPhotoBridge"

    const-string v1, "onShutterCaptured"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :goto_b1
    return-void
.end method

.method private static readRotationDegrees(Ljava/lang/String;)I
    .registers 5

    .line 384
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 385
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1a

    .line 387
    packed-switch p0, :pswitch_data_3a

    .line 398
    return v0

    .line 396
    :pswitch_11
    const/16 p0, 0x10e

    return p0

    .line 390
    :pswitch_14
    const/16 p0, 0x5a

    return p0

    .line 393
    :pswitch_17
    const/16 p0, 0xb4

    return p0

    .line 400
    :catchall_1a
    move-exception v1

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not read JPEG EXIF orientation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", assuming 0"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TransMotionPhotoBridge"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    return v0

    :pswitch_data_3a
    .packed-switch 0x3
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_14
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method private static rescan(Ljava/io/File;)V
    .registers 4

    .line 407
    invoke-static {}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->currentApplication()Landroid/content/Context;

    move-result-object v0

    .line 408
    if-nez v0, :cond_7

    return-void

    .line 409
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v1, "image/jpeg"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 411
    return-void
.end method

.method private static saveToSharedPreferences(Ljava/lang/String;)V
    .registers 4

    .line 426
    :try_start_0
    invoke-static {}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->currentApplication()Landroid/content/Context;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_1a

    .line 428
    const-string v1, "transsion_motion_photo_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 429
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_motion_photo"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    .line 433
    :cond_1a
    goto :goto_23

    .line 431
    :catchall_1b
    move-exception p0

    .line 432
    const-string v0, "TransMotionPhotoBridge"

    const-string v1, "saveToSharedPreferences error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    :goto_23
    return-void
.end method

.method public static setEnabled(Z)V
    .registers 3

    .line 50
    sput-boolean p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->enabled:Z

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Motion Photo durumu g\u00fcncellendi: enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransMotionPhotoBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-eqz p0, :cond_21

    const-string p0, "on"

    goto :goto_23

    :cond_21
    const-string p0, "off"

    :goto_23
    invoke-static {p0}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->saveToSharedPreferences(Ljava/lang/String;)V

    .line 54
    :try_start_26
    sget-boolean p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->enabled:Z

    if-nez p0, :cond_2d

    .line 55
    invoke-static {}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->stopEncoders()V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2e

    .line 59
    :cond_2d
    goto :goto_34

    .line 57
    :catchall_2e
    move-exception p0

    .line 58
    const-string v0, "Enkodeler durdurulurken hata"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :goto_34
    return-void
.end method

.method public static stopEncoders()V
    .registers 3

    .line 64
    :try_start_0
    sget-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->HANDLER:Landroid/os/Handler;

    sget-object v1, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->WATCHDOG_RUNNABLE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    sget-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->ENCODER:Lcom/transsion/motionphoto/PreviewFrameEncoder;

    invoke-virtual {v0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 66
    sget-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->ENCODER:Lcom/transsion/motionphoto/PreviewFrameEncoder;

    invoke-virtual {v0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->stop()V

    .line 68
    :cond_14
    sget-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->AUDIO_ENCODER:Lcom/transsion/motionphoto/AudioFrameEncoder;

    invoke-virtual {v0}, Lcom/transsion/motionphoto/AudioFrameEncoder;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 69
    sget-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->AUDIO_ENCODER:Lcom/transsion/motionphoto/AudioFrameEncoder;

    invoke-virtual {v0}, Lcom/transsion/motionphoto/AudioFrameEncoder;->stop()V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    .line 73
    :cond_21
    goto :goto_2a

    .line 71
    :catchall_22
    move-exception v0

    .line 72
    const-string v1, "TransMotionPhotoBridge"

    const-string v2, "stopEncoders hatas\u0131"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :goto_2a
    return-void
.end method
