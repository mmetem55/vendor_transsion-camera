.class public Lapi/natsuite/natcorder/GIFRecorder;
.super Ljava/lang/Object;
.source "GIFRecorder.java"

# interfaces
.implements Lapi/natsuite/natcorder/MediaRecorder;


# instance fields
.field private final B_RANGE:I

.field private final G_RANGE:I

.field private final PALETTE_SIZE:I

.field private final R_RANGE:I

.field private final delay:I

.field private final height:I

.field private final indexedPixels:[B

.field private final outputStream:Ljava/io/OutputStream;

.field private final recordingPath:Ljava/lang/String;

.field private final width:I

.field private final writerHandler:Landroid/os/Handler;

.field private final writerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$eag47poTH_MH9XVGnzNDkfrxZ8o(Lapi/natsuite/natcorder/GIFRecorder;IILjava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lapi/natsuite/natcorder/GIFRecorder;->lambda$new$0(IILjava/io/OutputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g926qYka0r-xal1Pb0SkIJPubj0(Lapi/natsuite/natcorder/GIFRecorder;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lapi/natsuite/natcorder/GIFRecorder;->lambda$commitFrame$1([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$tmiJY2eEX93y7w9k94dy2p6fqvI(Lapi/natsuite/natcorder/GIFRecorder;Lapi/natsuite/natcorder/MediaRecorder$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lapi/natsuite/natcorder/GIFRecorder;->lambda$finishWriting$2(Lapi/natsuite/natcorder/MediaRecorder$Callback;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIF)V
    .locals 3

    const-string v0, "NatSuite"

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x7

    .line 190
    iput v1, p0, Lapi/natsuite/natcorder/GIFRecorder;->PALETTE_SIZE:I

    const/4 v2, 0x6

    .line 191
    iput v2, p0, Lapi/natsuite/natcorder/GIFRecorder;->R_RANGE:I

    iput v1, p0, Lapi/natsuite/natcorder/GIFRecorder;->G_RANGE:I

    iput v2, p0, Lapi/natsuite/natcorder/GIFRecorder;->B_RANGE:I

    .line 37
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NatCorder Error: Failed to create GIFRecorder"

    .line 39
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 42
    :goto_0
    iput p2, p0, Lapi/natsuite/natcorder/GIFRecorder;->width:I

    .line 43
    iput p3, p0, Lapi/natsuite/natcorder/GIFRecorder;->height:I

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p4, v2

    float-to-int p4, p4

    .line 44
    iput p4, p0, Lapi/natsuite/natcorder/GIFRecorder;->delay:I

    .line 45
    iput-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->recordingPath:Ljava/lang/String;

    .line 46
    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "NatCorder GIF Encoding Thread"

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->writerThread:Landroid/os/HandlerThread;

    .line 47
    iput-object v1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    mul-int v2, p2, p3

    .line 48
    new-array v2, v2, [B

    iput-object v2, p0, Lapi/natsuite/natcorder/GIFRecorder;->indexedPixels:[B

    .line 50
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lapi/natsuite/natcorder/GIFRecorder;->writerHandler:Landroid/os/Handler;

    .line 53
    new-instance p1, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2, p3, v1}, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda1;-><init>(Lapi/natsuite/natcorder/GIFRecorder;IILjava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "NatCorder: Prepared GIF encoder with format: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " @"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 p4, p4, 0xa

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "Ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dither([B[B)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    move v9, v8

    .line 202
    :goto_0
    iget v0, v6, Lapi/natsuite/natcorder/GIFRecorder;->height:I

    if-ge v9, v0, :cond_4

    move v10, v8

    .line 203
    :goto_1
    iget v0, v6, Lapi/natsuite/natcorder/GIFRecorder;->width:I

    if-ge v10, v0, :cond_3

    .line 204
    invoke-direct {v6, v7, v10, v9, v8}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v0

    const/4 v11, 0x1

    .line 205
    invoke-direct {v6, v7, v10, v9, v11}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v1

    const/4 v12, 0x2

    .line 206
    invoke-direct {v6, v7, v10, v9, v12}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v2

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x7f

    .line 207
    div-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v1, 0x6

    add-int/lit8 v4, v4, 0x7f

    .line 208
    div-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v2, 0x5

    add-int/lit8 v5, v5, 0x7f

    .line 209
    div-int/lit16 v5, v5, 0xff

    .line 210
    iget v13, v6, Lapi/natsuite/natcorder/GIFRecorder;->width:I

    mul-int v14, v9, v13

    add-int/2addr v14, v10

    mul-int/lit8 v15, v3, 0x2a

    mul-int/lit8 v16, v4, 0x6

    add-int v15, v15, v16

    add-int/2addr v15, v5

    int-to-byte v15, v15

    aput-byte v15, p2, v14

    if-eqz v10, :cond_2

    add-int/lit8 v13, v13, -0x1

    if-ne v10, v13, :cond_0

    goto/16 :goto_2

    .line 214
    :cond_0
    iget v13, v6, Lapi/natsuite/natcorder/GIFRecorder;->height:I

    sub-int/2addr v13, v11

    if-ne v9, v13, :cond_1

    goto/16 :goto_2

    :cond_1
    mul-int/lit16 v3, v3, 0xff

    .line 216
    div-int/lit8 v3, v3, 0x5

    sub-int v13, v0, v3

    mul-int/lit16 v4, v4, 0xff

    .line 217
    div-int/lit8 v4, v4, 0x6

    sub-int v14, v1, v4

    mul-int/lit16 v5, v5, 0xff

    .line 218
    div-int/lit8 v5, v5, 0x5

    sub-int v15, v2, v5

    add-int/lit8 v5, v10, 0x1

    const/4 v4, 0x0

    .line 223
    invoke-direct {v6, v7, v5, v9, v8}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v0

    mul-int/lit8 v1, v13, 0x7

    div-int/lit8 v1, v1, 0x10

    add-int v16, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v9

    move v8, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/GIFRecorder;->writePixel([BIIII)V

    const/4 v4, 0x1

    .line 224
    invoke-direct {v6, v7, v8, v9, v11}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v0

    mul-int/lit8 v1, v14, 0x7

    div-int/lit8 v1, v1, 0x10

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/GIFRecorder;->writePixel([BIIII)V

    const/4 v4, 0x2

    .line 225
    invoke-direct {v6, v7, v8, v9, v12}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v0

    mul-int/lit8 v1, v15, 0x7

    div-int/lit8 v1, v1, 0x10

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/GIFRecorder;->writePixel([BIIII)V

    add-int/lit8 v5, v10, -0x1

    add-int/lit8 v4, v9, 0x1

    const/16 v16, 0x0

    const/4 v0, 0x0

    .line 229
    invoke-direct {v6, v7, v5, v4, v0}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v1

    mul-int/lit8 v0, v13, 0x3

    div-int/lit8 v0, v0, 0x10

    add-int v17, v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v4

    move v12, v4

    move/from16 v4, v16

    move/from16 v16, v9

    move v9, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/GIFRecorder;->writePixel([BIIII)V

    const/4 v4, 0x1

    .line 230
    invoke-direct {v6, v7, v9, v12, v11}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v0

    mul-int/lit8 v1, v14, 0x3

    div-int/lit8 v1, v1, 0x10

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v12

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/GIFRecorder;->writePixel([BIIII)V

    const/4 v4, 0x2

    const/4 v0, 0x2

    .line 231
    invoke-direct {v6, v7, v9, v12, v0}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v1

    mul-int/lit8 v0, v15, 0x3

    div-int/lit8 v0, v0, 0x10

    add-int v5, v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/GIFRecorder;->writePixel([BIIII)V

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 235
    invoke-direct {v6, v7, v10, v12, v0}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v1

    mul-int/lit8 v0, v13, 0x5

    div-int/lit8 v0, v0, 0x10

    add-int v5, v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/GIFRecorder;->writePixel([BIIII)V

    const/4 v4, 0x1

    .line 236
    invoke-direct {v6, v7, v10, v12, v11}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v0

    mul-int/lit8 v1, v14, 0x5

    div-int/lit8 v1, v1, 0x10

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/GIFRecorder;->writePixel([BIIII)V

    const/4 v4, 0x2

    const/4 v0, 0x2

    .line 237
    invoke-direct {v6, v7, v10, v12, v0}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v1

    mul-int/lit8 v0, v15, 0x5

    div-int/lit8 v0, v0, 0x10

    add-int v5, v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/GIFRecorder;->writePixel([BIIII)V

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 241
    invoke-direct {v6, v7, v8, v12, v9}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v0

    mul-int/2addr v13, v11

    div-int/lit8 v13, v13, 0x10

    add-int v5, v0, v13

    move-object/from16 v0, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/GIFRecorder;->writePixel([BIIII)V

    const/4 v4, 0x1

    .line 242
    invoke-direct {v6, v7, v8, v12, v11}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v0

    mul-int/2addr v14, v11

    div-int/lit8 v14, v14, 0x10

    add-int v5, v0, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/GIFRecorder;->writePixel([BIIII)V

    const/4 v4, 0x2

    const/4 v0, 0x2

    .line 243
    invoke-direct {v6, v7, v8, v12, v0}, Lapi/natsuite/natcorder/GIFRecorder;->readPixel([BIII)I

    move-result v0

    mul-int/2addr v15, v11

    div-int/lit8 v15, v15, 0x10

    add-int v5, v0, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/GIFRecorder;->writePixel([BIIII)V

    goto :goto_3

    :cond_2
    :goto_2
    move/from16 v16, v9

    move v9, v8

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move v8, v9

    move/from16 v9, v16

    goto/16 :goto_1

    :cond_3
    move/from16 v16, v9

    move v9, v8

    add-int/lit8 v0, v16, 0x1

    move v9, v0

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private synthetic lambda$commitFrame$1([B)V
    .locals 3

    .line 122
    iget-object v0, p0, Lapi/natsuite/natcorder/GIFRecorder;->indexedPixels:[B

    invoke-direct {p0, p1, v0}, Lapi/natsuite/natcorder/GIFRecorder;->dither([B[B)V

    .line 126
    :try_start_0
    iget-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 127
    iget-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    const/16 v0, 0xf9

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 128
    iget-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 129
    iget-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 130
    iget p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->delay:I

    invoke-direct {p0, p1}, Lapi/natsuite/natcorder/GIFRecorder;->writeShort(I)V

    .line 131
    iget-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 132
    iget-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 134
    iget-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 135
    invoke-direct {p0, v0}, Lapi/natsuite/natcorder/GIFRecorder;->writeShort(I)V

    .line 136
    invoke-direct {p0, v0}, Lapi/natsuite/natcorder/GIFRecorder;->writeShort(I)V

    .line 137
    iget p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->width:I

    invoke-direct {p0, p1}, Lapi/natsuite/natcorder/GIFRecorder;->writeShort(I)V

    .line 138
    iget p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->height:I

    invoke-direct {p0, p1}, Lapi/natsuite/natcorder/GIFRecorder;->writeShort(I)V

    .line 139
    iget-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 141
    new-instance p1, Lapi/natsuite/natcorder/internal/LZWEncoder;

    iget v0, p0, Lapi/natsuite/natcorder/GIFRecorder;->width:I

    iget v1, p0, Lapi/natsuite/natcorder/GIFRecorder;->height:I

    const/16 v2, 0x8

    invoke-direct {p1, v0, v1, v2}, Lapi/natsuite/natcorder/internal/LZWEncoder;-><init>(III)V

    .line 142
    iget-object v0, p0, Lapi/natsuite/natcorder/GIFRecorder;->indexedPixels:[B

    iget-object v1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0, v1}, Lapi/natsuite/natcorder/internal/LZWEncoder;->encode([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NatSuite"

    const-string v1, "NatCorder: GIF encoding encountered exception"

    .line 144
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    iget-object p0, p0, Lapi/natsuite/natcorder/GIFRecorder;->writerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$finishWriting$2(Lapi/natsuite/natcorder/MediaRecorder$Callback;)V
    .locals 3

    const-string v0, "NatSuite"

    .line 165
    :try_start_0
    iget-object v1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 166
    iget-object v1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 167
    iget-object v1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const-string v1, "NatCorder: GIFRecorder stopped recording"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lapi/natsuite/natcorder/GIFRecorder;->recordingPath:Ljava/lang/String;

    invoke-interface {p1, v1}, Lapi/natsuite/natcorder/MediaRecorder$Callback;->onRecording(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "NatCorder: GIFRecorder encountered error"

    .line 172
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    .line 173
    invoke-interface {p1, v0}, Lapi/natsuite/natcorder/MediaRecorder$Callback;->onRecording(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :goto_0
    iget-object p0, p0, Lapi/natsuite/natcorder/GIFRecorder;->writerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :goto_1
    iget-object p0, p0, Lapi/natsuite/natcorder/GIFRecorder;->writerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 176
    throw p1
.end method

.method private synthetic lambda$new$0(IILjava/io/OutputStream;)V
    .locals 8

    :try_start_0
    const-string v0, "GIF89a"

    .line 56
    invoke-direct {p0, v0}, Lapi/natsuite/natcorder/GIFRecorder;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Lapi/natsuite/natcorder/GIFRecorder;->writeShort(I)V

    .line 59
    invoke-direct {p0, p2}, Lapi/natsuite/natcorder/GIFRecorder;->writeShort(I)V

    const/16 p1, 0xf7

    .line 60
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write(I)V

    .line 62
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write(I)V

    const/16 p2, 0x300

    new-array p2, p2, [B

    move v0, p1

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    move v3, p1

    :goto_1
    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    move v4, p1

    :goto_2
    if-ge v4, v2, :cond_0

    mul-int/lit8 v5, v1, 0x3

    mul-int/lit16 v6, v0, 0xff

    .line 68
    div-int/lit8 v6, v6, 0x5

    int-to-byte v6, v6

    aput-byte v6, p2, v5

    add-int/lit8 v6, v5, 0x1

    mul-int/lit16 v7, v3, 0xff

    .line 69
    div-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, p2, v6

    add-int/lit8 v5, v5, 0x2

    mul-int/lit16 v6, v4, 0xff

    .line 70
    div-int/lit8 v6, v6, 0x5

    int-to-byte v6, v6

    aput-byte v6, p2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    const/16 p2, 0x21

    .line 76
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write(I)V

    const/16 p2, 0xff

    .line 77
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write(I)V

    const/16 p2, 0xb

    .line 78
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write(I)V

    const-string p2, "NETSCAPE2.0"

    .line 79
    invoke-direct {p0, p2}, Lapi/natsuite/natcorder/GIFRecorder;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x3

    .line 80
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write(I)V

    const/4 p2, 0x1

    .line 81
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write(I)V

    .line 82
    invoke-direct {p0, p1}, Lapi/natsuite/natcorder/GIFRecorder;->writeShort(I)V

    .line 83
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "NatSuite"

    const-string p3, "NatCorder: GIFRecorder encountered error"

    .line 85
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    iget-object p0, p0, Lapi/natsuite/natcorder/GIFRecorder;->writerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :goto_3
    return-void
.end method

.method private readPixel([BIII)I
    .locals 0

    mul-int/lit8 p2, p2, 0x4

    .line 194
    iget p0, p0, Lapi/natsuite/natcorder/GIFRecorder;->width:I

    mul-int/2addr p3, p0

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    add-int/2addr p2, p4

    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private writePixel([BIIII)V
    .locals 0

    mul-int/lit8 p2, p2, 0x4

    .line 198
    iget p0, p0, Lapi/natsuite/natcorder/GIFRecorder;->width:I

    mul-int/2addr p3, p0

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    add-int/2addr p2, p4

    const/4 p0, 0x0

    invoke-static {p0, p5}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 p3, 0xff

    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private writeShort(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 249
    iget-object p0, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 253
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 254
    iget-object v1, p0, Lapi/natsuite/natcorder/GIFRecorder;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public commitFrame(Ljava/nio/ByteBuffer;J)V
    .locals 2

    .line 116
    iget p2, p0, Lapi/natsuite/natcorder/GIFRecorder;->width:I

    iget p3, p0, Lapi/natsuite/natcorder/GIFRecorder;->height:I

    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x4

    new-array p2, p2, [B

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_0

    .line 118
    iget v0, p0, Lapi/natsuite/natcorder/GIFRecorder;->width:I

    mul-int v1, p3, v0

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder;->writerHandler:Landroid/os/Handler;

    new-instance p3, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda0;-><init>(Lapi/natsuite/natcorder/GIFRecorder;[B)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public commitSamples([FJ)V
    .locals 0

    return-void
.end method

.method public finishWriting(Lapi/natsuite/natcorder/MediaRecorder$Callback;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lapi/natsuite/natcorder/GIFRecorder;->writerHandler:Landroid/os/Handler;

    new-instance v1, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda2;-><init>(Lapi/natsuite/natcorder/GIFRecorder;Lapi/natsuite/natcorder/MediaRecorder$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public frameHeight()I
    .locals 0

    .line 105
    iget p0, p0, Lapi/natsuite/natcorder/GIFRecorder;->height:I

    return p0
.end method

.method public frameWidth()I
    .locals 0

    .line 97
    iget p0, p0, Lapi/natsuite/natcorder/GIFRecorder;->width:I

    return p0
.end method
