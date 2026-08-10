.class public Lapi/natsuite/natcorder/HEVCRecorder;
.super Lapi/natsuite/natcorder/internal/HardwareRecorder;
.source "HEVCRecorder.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIFIIIII)V
    .locals 13

    move-object v0, p1

    move/from16 v1, p5

    move/from16 v2, p6

    const-string v3, "audio/mp4a-latm"

    const-string v4, "bitrate"

    const-string v5, "video/hevc"

    .line 39
    invoke-direct {p0}, Lapi/natsuite/natcorder/internal/HardwareRecorder;-><init>()V

    const/4 v6, 0x1

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const-string v8, "NatSuite"

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    .line 45
    :try_start_0
    new-instance v10, Lapi/natsuite/natcorder/internal/AVMediaWriter;

    invoke-direct {v10, p1}, Lapi/natsuite/natcorder/internal/AVMediaWriter;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v10, Lapi/natsuite/natcorder/internal/MediaWriter;

    invoke-direct {v10, p1}, Lapi/natsuite/natcorder/internal/MediaWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    move v0, p2

    move/from16 v11, p3

    .line 47
    :try_start_1
    invoke-static {v5, p2, v11}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v11, "color-format"

    const v12, 0x7f420888

    .line 48
    invoke-virtual {v0, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v11, "frame-rate"

    move/from16 v12, p4

    .line 49
    invoke-virtual {v0, v11, v12}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    move/from16 v11, p7

    .line 50
    invoke-virtual {v0, v4, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v11, "i-frame-interval"

    move/from16 v12, p8

    .line 51
    invoke-virtual {v0, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 52
    invoke-static {v5}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 53
    :try_start_2
    invoke-virtual {v5, v0, v9, v9, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 54
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NatCorder: HEVCRecorder prepared video encoder with format: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    .line 57
    invoke-static {v3, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "channel-count"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "channel-mask"

    const/4 v7, 0x2

    if-ne v2, v7, :cond_2

    const/16 v2, 0xc

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    .line 59
    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move/from16 v1, p9

    .line 60
    invoke-virtual {v0, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "aac-profile"

    .line 61
    invoke-virtual {v0, v1, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "max-input-size"

    const/16 v2, 0x4000

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 63
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 64
    :try_start_3
    invoke-virtual {v1, v0, v9, v9, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NatCorder: HEVCRecorder prepared audio encoder with format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    goto :goto_3

    :cond_3
    move-object v0, p0

    move-object v1, v9

    .line 68
    :goto_3
    invoke-virtual {p0, v5, v1, v10}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->start(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Lapi/natsuite/natcorder/internal/MediaWriter;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v9

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v9

    move-object v5, v1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v9

    move-object v5, v1

    move-object v10, v5

    :goto_4
    const-string v2, "NatCorder Error: HEVCRecorder failed to create encoder"

    .line 70
    invoke-static {v8, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v10, :cond_4

    .line 72
    invoke-virtual {v10, v9}, Lapi/natsuite/natcorder/internal/MediaWriter;->finishWriting(Lapi/natsuite/natcorder/MediaRecorder$Callback;)V

    :cond_4
    if-eqz v5, :cond_5

    .line 74
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    :cond_5
    if-eqz v1, :cond_6

    .line 76
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    :cond_6
    :goto_5
    return-void
.end method
