.class public final Lcom/transnet/filter/a/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;DLjava/lang/String;)[Ljava/lang/String;
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v2, p1, v0

    const-string v3, ""

    if-lez v2, :cond_0

    :goto_0
    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "atempo=2.0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    div-double/2addr p1, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    :goto_1
    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "atempo=0.5,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    div-double/2addr p1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "input.mp4"

    aput-object v3, v0, p2

    aput-object p1, v0, v2

    const-string p1, "output.aac"

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "ffmpeg -i %s -filter:a %s -y %s"

    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aput-object p0, p1, p2

    array-length p0, p1

    sub-int/2addr p0, v2

    aput-object p3, p1, p0

    return-object p1
.end method

.method public static a(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "[0:v]setpts=PTS/%f[v];"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v5, p1, v2

    const-string v6, "[0:a]"

    if-lez v5, :cond_1

    :goto_0
    cmpl-double v5, p1, v2

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "atempo=2.0,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    div-double/2addr p1, v2

    goto :goto_0

    :cond_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, p1, v2

    if-gez v5, :cond_2

    :goto_1
    cmpg-double v5, p1, v2

    if-gez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "atempo=0.5,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    div-double/2addr p1, v2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "atempo=%f[a]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v5, v4

    invoke-static {v3, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    const-string v0, "output.mp4"

    const/4 v2, 0x3

    const-string v5, "input.mp4"

    const/4 v6, 0x2

    if-nez p3, :cond_3

    new-array p3, v2, [Ljava/lang/Object;

    aput-object v5, p3, v4

    aput-object p1, p3, v1

    aput-object v0, p3, v6

    const-string p1, "ffmpeg -i %s -filter_complex %s -map [v] -map [a] -y %s"

    invoke-static {v3, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v4

    aput-object p1, v7, v1

    aput-object p3, v7, v6

    aput-object v0, v7, v2

    const-string p1, "ffmpeg -i %s -filter_complex %s -map [v] -map [a] %s -y %s"

    invoke-static {v3, p1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aput-object p0, p1, v6

    array-length p0, p1

    sub-int/2addr p0, v1

    aput-object p4, p1, p0

    return-object p1
.end method

.method private static a(Ljava/lang/String;IILjava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
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

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "input.h264"

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v3, "output.mp4"

    aput-object v3, v1, p1

    const-string p1, "ffmpeg -fflags +genpts -r %d -i %s -vcodec copy -y %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    aput-object p0, p1, v0

    array-length p0, p1

    sub-int/2addr p0, v2

    aput-object p2, p1, p0

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "input.mp4"

    aput-object v4, v2, v3

    const-string v3, "output.h264"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "ffmpeg -i %s -map 0:v -vcodec copy -bsf:v h264_mp4toannexb -y %s"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aput-object p0, v0, v1

    array-length p0, v0

    sub-int/2addr p0, v4

    aput-object p1, v0, p0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;III)[Ljava/lang/String;
    .locals 4

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

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x3

    aput-object p2, v1, p4

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

    return-object p2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)[Ljava/lang/String;
    .locals 4

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

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

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

    return-object p2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "ffmpeg -i %s -i %s -c:v copy -shortest -filter_complex [0:a]aformat=fltp:44100:stereo,apad[0a];[1]aformat=fltp:44100:stereo,volume=1.5,aloop=loop=-1:size=2e+09[1a];[0a][1a]amerge[a] -map 0:v -map [a] -ac 2 -y %s"

    goto :goto_0

    :cond_0
    const-string p2, "ffmpeg -i %s -i %s -c:v copy -shortest -filter_complex [1]aformat=fltp:44100:stereo,volume=1.5,aloop=loop=-1[aout] -map 0:v -map [aout] -ac 2 -y %s"

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
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

    return-object p2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "input.mp4"

    aput-object v3, v1, v2

    const-string v2, "input.aac"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "output.mp4"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "ffmpeg -i %s -i %s -map 0:v -map 1:a -codec copy -y %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aput-object p0, v0, v4

    const/4 p0, 0x4

    aput-object p1, v0, p0

    array-length p0, v0

    sub-int/2addr p0, v3

    aput-object p2, v0, p0

    return-object v0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "input"

    aput-object v3, v1, v2

    neg-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "output"

    const/4 v3, 0x2

    aput-object p1, v1, v3

    const-string p1, "ffmpeg -i %s -metadata:s:v rotate=%d -codec copy -y %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aput-object p0, p1, v3

    array-length p0, p1

    sub-int/2addr p0, v2

    aput-object p2, p1, p0

    return-object p1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
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

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string v2, "ffmpeg -i %s -i %s -shortest -filter_complex [1:a]aloop=loop=-1:size=2e+09[out];[out][0:a]amix -vcodec copy -y %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v1

    const-string p0, "\"%s\'"

    invoke-static {v2, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    const/4 p0, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const-string p1, "\"%s\""

    invoke-static {v2, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, p0

    array-length p0, v0

    sub-int/2addr p0, v3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
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

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

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

    return-object v0
.end method
