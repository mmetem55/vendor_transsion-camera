.class public Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;
.super Ljava/lang/Object;
.source "FFMpegUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_FRAME_RATE:I = 0x18

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FFMpegUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeVideoFrameRate(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const-string p0, "ffmpeg -fflags +genpts -r %d -i %s -vcodec copy -y %s"

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->splitArgs(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static changeVideoFrameRate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const-string p0, "ffmpeg -fflags +genpts -r %s -i %s -vcodec copy -y %s"

    .line 131
    invoke-static {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->splitArgs(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static extractAudioChannelWithSpeed(Ljava/lang/String;DLjava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    cmpl-double v3, p1, v1

    if-lez v3, :cond_0

    :goto_0
    cmpl-double v3, p1, v1

    if-lez v3, :cond_1

    const-string v3, "atempo=2.0,"

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-double/2addr p1, v1

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, p1, v1

    if-gez v3, :cond_1

    :goto_1
    cmpg-double v3, p1, v1

    if-gez v3, :cond_1

    const-string v3, "atempo=0.5,"

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-double/2addr p1, v1

    goto :goto_1

    .line 122
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "atempo=%f"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, p2

    aput-object v0, p1, v2

    const/4 p0, 0x2

    aput-object p3, p1, p0

    const-string p0, "ffmpeg -i %s -filter:a %s -y %s"

    .line 123
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->splitArgs(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static extractVideoChannel(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "ffmpeg -i %s -map 0:v -vcodec copy -bsf:v h264_mp4toannexb -y %s"

    .line 127
    invoke-static {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->splitArgs(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFrameRateByMediaExtractor(Ljava/lang/String;)I
    .locals 6

    const-string v0, "frame-rate"

    .line 151
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 153
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    .line 156
    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    .line 157
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 163
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    const/16 p0, 0x18

    return p0

    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 166
    throw p0
.end method

.method private static mergeAudioAndVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const-string p0, "ffmpeg -i %s -i %s -map 0:v -map 1:a -codec copy -y %s"

    .line 139
    invoke-static {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->splitArgs(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static printArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 173
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_0
    sget-object p1, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printArray:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static rotateVideo(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    neg-int p0, p1

    .line 143
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const-string p0, "ffmpeg -i %s -metadata:s:v rotate=%d -codec copy -y %s"

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->splitArgs(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static speedChange(Ljava/lang/String;DLjava/lang/String;Ljava/lang/Boolean;Lcom/transnet/filter/listener/OnHandleListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 28
    sget-object p0, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "speed invalid"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    const/4 v2, 0x0

    .line 34
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v4, 0x0

    .line 36
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v5, 0x18

    .line 37
    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    .line 38
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    .line 39
    invoke-virtual {v3, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 43
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v4

    .line 47
    :goto_0
    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-double v0, v0

    div-double/2addr v6, v0

    move-wide v0, v6

    goto :goto_2

    :catch_1
    move-exception v6

    .line 49
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->getFrameRateByMediaExtractor(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-double v0, v0

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_3
    move-exception v6

    move v5, v4

    .line 53
    :goto_1
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 55
    :goto_2
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 57
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    mul-double v7, p1, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v4, "%.2f"

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 58
    sget-object v4, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "speedChange:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", src duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " frameRate: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "tmp.h264"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "tmp.aac"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "tmprotate.mp4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "tmp.mp4"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {p0, v2}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->extractVideoChannel(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_2

    .line 75
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {p0, p1, p2, v6}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->extractAudioChannelWithSpeed(Ljava/lang/String;DLjava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v2, v3, v0}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->changeVideoFrameRate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_1

    .line 80
    invoke-static {v0, v6, v7}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->mergeAudioAndVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v7, v5, p3}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->rotateVideo(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 83
    :cond_1
    invoke-static {v0, v6, p3}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->mergeAudioAndVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    if-eqz v5, :cond_3

    .line 87
    invoke-static {v2, v3, v7}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->changeVideoFrameRate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {v7, v5, p3}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->rotateVideo(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 90
    :cond_3
    invoke-static {v2, v3, p3}, Lcom/transsion/camera/feature/funvideo/mode/FFMpegUtil;->changeVideoFrameRate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [[Ljava/lang/String;

    .line 94
    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 96
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    invoke-static {p0, p1, p5}, Lcom/transnet/filter/FFmpegCmd;->a([[Ljava/lang/String;[Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    :goto_4
    return-void

    .line 55
    :goto_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 56
    throw p0
.end method

.method private static varargs splitArgs(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1

    .line 147
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
