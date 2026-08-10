.class public Lcom/transnet/filter/TransCoder;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "TransCoder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBGMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V
    .locals 5

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {p0}, Lcom/transnet/filter/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/transnet/filter/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "ffmpeg -i %s -i %s -c:v copy -shortest -filter_complex [0:a]aformat=fltp:44100:stereo,apad[0a];[1]aformat=fltp:44100:stereo,volume=1.5,aloop=loop=-1:size=2e+09[1a];[0a][1a]amerge[a] -map 0:v -map [a] -ac 2 -y %s"

    goto :goto_0

    :cond_2
    const-string p2, "ffmpeg -i %s -i %s -c:v copy -shortest -filter_complex [1]aformat=fltp:44100:stereo,volume=1.5,aloop=loop=-1[aout] -map 0:v -map [aout] -ac 2 -y %s"

    :goto_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "input.mp4"

    aput-object v3, v1, v2

    const-string v2, "music.mp3"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "output.mp4"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aput-object p0, p2, v4

    const/4 p0, 0x4

    aput-object p1, p2, p0

    array-length p0, p2

    sub-int/2addr p0, v3

    aput-object p3, p2, p0

    invoke-static {p2, p4}, Lcom/transnet/filter/FFmpegCmd;->a([Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void

    :cond_3
    :goto_1
    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "video or music file is not exist"

    :goto_2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_3
    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "video, music and output file cannot be null\n"

    goto :goto_2
.end method

.method public static addWatermark(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V
    .locals 4

    if-eqz p0, :cond_3

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_2

    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "inputFile"

    aput-object v3, v1, v2

    const-string v2, "water.png"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 p2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const-string p2, "outputFile"

    const/4 p3, 0x4

    aput-object p2, v1, p3

    const-string p2, "ffmpeg -i %s -i %s -filter_complex overlay=%d:%d -c:v libx264 -preset ultrafast -crf 22 -y %s"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aput-object p0, p2, v2

    aput-object p1, p2, p3

    array-length p0, p2

    sub-int/2addr p0, v3

    aput-object p4, p2, p0

    invoke-static {p2, p5}, Lcom/transnet/filter/FFmpegCmd;->a([Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "watermark position invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "input file or output file can not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static concatFile(Ljava/lang/String;Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V
    .locals 4

    if-nez p0, :cond_0

    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "concat file list cannot be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "fileList.txt"

    aput-object v3, v1, v2

    const-string v2, "output.mp4"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "ffmpeg -f concat -safe 0 -i %s -c copy -y %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    array-length p0, v0

    sub-int/2addr p0, v3

    aput-object p1, v0, p0

    move-object p0, v0

    :goto_0
    invoke-static {p0, p2}, Lcom/transnet/filter/FFmpegCmd;->a([Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void
.end method

.method public static convertWav(Ljava/lang/String;Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "ffmpeg -i %s -f wav -y %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/transnet/filter/FFmpegCmd;->a([Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "input file or output file can not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static cropVideo(Ljava/lang/String;IILjava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V
    .locals 3

    if-eqz p0, :cond_6

    if-nez p3, :cond_0

    goto :goto_4

    :cond_0
    if-ltz p1, :cond_5

    if-gez p2, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {p0}, Lcom/transnet/filter/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "video file is not exist"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-ltz p1, :cond_4

    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    const-string v2, "input.mp4"

    aput-object v2, v1, p1

    const/4 p1, 0x3

    const-string v2, "output.mp4"

    aput-object v2, v1, p1

    const-string p1, "ffmpeg -ss %d -t %d -i %s -c:v libx264 -preset ultrafast -crf 21 -c:a aac -y %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    aput-object p0, p1, v0

    array-length p0, p1

    sub-int/2addr p0, p2

    aput-object p3, p1, p0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1, p4}, Lcom/transnet/filter/FFmpegCmd;->a([Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void

    :cond_5
    :goto_3
    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "start time or duration invalid"

    goto :goto_0

    :cond_6
    :goto_4
    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "input/output file cannot be null"

    goto :goto_0
.end method

.method public static reverseVideo(Ljava/lang/String;Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V
    .locals 5

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "inputFile"

    aput-object v4, v2, v3

    const-string v3, "outputFile"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "ffmpeg -i %s -vf reverse -af areverse -c:v libx264 -preset ultrafast -crf 22 -y %s"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aput-object p0, v0, v1

    array-length p0, v0

    sub-int/2addr p0, v4

    aput-object p1, v0, p0

    invoke-static {v0, p2}, Lcom/transnet/filter/FFmpegCmd;->a([Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "input file or output file can not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static speedChange(Ljava/lang/String;DLjava/lang/String;Ljava/lang/Boolean;Lcom/transnet/filter/listener/OnHandleListener;)V
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    const-string v0, "frame-rate"

    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_0

    sget-object v0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string v1, "speed invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/media/MediaExtractor;

    invoke-direct {v7}, Landroid/media/MediaExtractor;-><init>()V

    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v8, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v9, 0x18

    invoke-virtual {v8, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "video rotation: "

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :try_start_0
    invoke-virtual {v7, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_2

    invoke-virtual {v7, v12}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v13

    const-string v14, "mime"

    invoke-virtual {v13, v14}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "video/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v13, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v13, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v11, "tmprotate.mp4"

    const-string v12, "tmp.h264"

    const-string v13, "/"

    if-nez v7, :cond_5

    const/4 v7, 0x4

    if-eqz v8, :cond_3

    const/4 v14, 0x5

    new-array v14, v14, [[Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-array v14, v7, [[Ljava/lang/String;

    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "tmp.aac"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "tmp.mp4"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x4

    new-array v11, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v12, v11, v6

    const/4 v13, 0x1

    aput-object v10, v11, v13

    const/4 v15, 0x2

    aput-object v7, v11, v15

    const/16 v16, 0x3

    aput-object v0, v11, v16

    invoke-static {v1, v12}, Lcom/transnet/filter/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v6

    invoke-static {v1, v2, v3, v10}, Lcom/transnet/filter/a/c;->a(Ljava/lang/String;DLjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v13

    int-to-double v5, v9

    mul-double v1, v2, v5

    double-to-int v1, v1

    invoke-static {v12, v1, v7}, Lcom/transnet/filter/a/c;->a(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v15

    if-eqz v8, :cond_4

    invoke-static {v7, v10, v0}, Lcom/transnet/filter/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v14, v5

    invoke-static {v0, v8, v4}, Lcom/transnet/filter/a/c;->b(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v14, v1

    goto :goto_2

    :cond_4
    const/4 v5, 0x3

    invoke-static {v7, v10, v4}, Lcom/transnet/filter/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v5

    :goto_2
    move-object/from16 v7, p5

    invoke-static {v14, v11, v7}, Lcom/transnet/filter/FFmpegCmd;->a([[Ljava/lang/String;[Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void

    :cond_5
    move-object v7, v5

    const/4 v5, 0x3

    if-eqz v8, :cond_6

    new-array v5, v5, [[Ljava/lang/String;

    goto :goto_3

    :cond_6
    const/4 v5, 0x2

    new-array v10, v5, [[Ljava/lang/String;

    move-object v5, v10

    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    new-array v11, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v10, v11, v6

    const/4 v12, 0x1

    aput-object v0, v11, v12

    invoke-static {v1, v10}, Lcom/transnet/filter/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    if-eqz v8, :cond_7

    int-to-double v13, v9

    mul-double v1, v2, v13

    double-to-int v1, v1

    invoke-static {v10, v1, v0}, Lcom/transnet/filter/a/c;->a(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v12

    invoke-static {v0, v8, v4}, Lcom/transnet/filter/a/c;->b(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v5, v1

    goto :goto_4

    :cond_7
    int-to-double v0, v9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v10, v0, v4}, Lcom/transnet/filter/a/c;->a(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v12

    :goto_4
    invoke-static {v5, v11, v7}, Lcom/transnet/filter/FFmpegCmd;->a([[Ljava/lang/String;[Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void

    :goto_5
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    throw v0
.end method

.method public static speedChange(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V
    .locals 6

    if-nez p4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/transnet/filter/TransCoder;->speedChange(Ljava/lang/String;DLjava/lang/String;Ljava/lang/Boolean;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void

    :cond_0
    if-eqz p0, :cond_4

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "speed invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Lcom/transnet/filter/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "video or music file is not exist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {p0, p1, p2, p4, p3}, Lcom/transnet/filter/a/c;->a(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p5}, Lcom/transnet/filter/FFmpegCmd;->a([Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void

    :cond_4
    :goto_0
    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "input/output file cannot be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static speedChange2(Ljava/lang/String;DLjava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V
    .locals 2

    if-eqz p0, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "speed invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0}, Lcom/transnet/filter/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "video or music file is not exist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "-c:v libx264 -preset ultrafast -crf 22"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/transnet/filter/a/c;->a(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lcom/transnet/filter/FFmpegCmd;->a([Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void

    :cond_3
    :goto_0
    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "input/output file cannot be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static takeShots(Ljava/lang/String;Ljava/lang/String;IIILcom/transnet/filter/listener/OnHandleListener;)V
    .locals 4

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_1

    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "takeshot fps invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "inputFile"

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    const/4 p2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v1, p2

    const/4 p2, 0x4

    const-string p4, "output"

    aput-object p4, v1, p2

    const-string p2, "ffmpeg -i %s -r %d -s %dx%d %s.bmp"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, " "

    invoke-virtual {p2, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aput-object p0, p2, p3

    array-length p0, p2

    sub-int/2addr p0, v2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/%04d.bmp"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p0

    invoke-static {p2, p5}, Lcom/transnet/filter/FFmpegCmd;->a([Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/transnet/filter/TransCoder;->a:Ljava/lang/String;

    const-string p1, "input file or output directory can not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
