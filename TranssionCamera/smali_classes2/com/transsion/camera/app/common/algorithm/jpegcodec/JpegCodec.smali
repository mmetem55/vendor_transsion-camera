.class public final Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;
.super Ljava/lang/Object;
.source "JpegCodec.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;


# instance fields
.field private mJpegCodecImpl:Lcom/transsion/camera/app/common/algorithm/jpegcodec/IJpegCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 26
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->sInstance:Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.feature.jpegcodec.JpegCodecImpl"

    .line 31
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/IJpegCodec;

    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->mJpegCodecImpl:Lcom/transsion/camera/app/common/algorithm/jpegcodec/IJpegCodec;

    return-void
.end method

.method public static jpegEncode([BIII)[B
    .locals 1

    const/16 v0, 0x64

    .line 41
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegEncode([BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static jpegEncode([BIIII)[B
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move v6, p4

    .line 46
    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegEncode([BIIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static jpegEncode([BIIIIIIIZ)[B
    .locals 10

    .line 58
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->sInstance:Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegEncodeImpl([BIIIIIIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static jpegEncode([BIIIIIIZ)[B
    .locals 9

    const/16 v6, 0x64

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    move/from16 v8, p7

    .line 52
    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegEncode([BIIIIIIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method private jpegEncodeImpl([BIIIIIIIZ)[B
    .locals 10

    move-object v0, p0

    .line 97
    iget-object v0, v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->mJpegCodecImpl:Lcom/transsion/camera/app/common/algorithm/jpegcodec/IJpegCodec;

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mJpegCodecImpl is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 102
    invoke-interface/range {v0 .. v9}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/IJpegCodec;->jpegEncode([BIIIIIIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static jpegSoftEncode([BIII)[B
    .locals 1

    const/16 v0, 0x64

    .line 63
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegSoftEncode([BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static jpegSoftEncode([BIIII)[B
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move v6, p4

    .line 68
    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegSoftEncode([BIIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static jpegSoftEncode([BIIIIIIIZ)[B
    .locals 10

    .line 80
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->sInstance:Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegSoftEncodeImpl([BIIIIIIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static jpegSoftEncode([BIIIIIIZ)[B
    .locals 9

    const/16 v6, 0x64

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    move/from16 v8, p7

    .line 74
    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegSoftEncode([BIIIIIIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method private jpegSoftEncodeImpl([BIIIIIIIZ)[B
    .locals 10

    move-object v0, p0

    .line 108
    iget-object v0, v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->mJpegCodecImpl:Lcom/transsion/camera/app/common/algorithm/jpegcodec/IJpegCodec;

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mJpegCodecImpl is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 113
    invoke-interface/range {v0 .. v9}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/IJpegCodec;->jpegSoftEncode([BIIIIIIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static transform([BIIIIIIZ)[B
    .locals 9

    .line 36
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->sInstance:Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->transformImpl([BIIIIIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method private transformImpl([BIIIIIIZ)[B
    .locals 9

    move-object v0, p0

    .line 86
    iget-object v0, v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->mJpegCodecImpl:Lcom/transsion/camera/app/common/algorithm/jpegcodec/IJpegCodec;

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mJpegCodecImpl is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 91
    invoke-interface/range {v0 .. v8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/IJpegCodec;->transform([BIIIIIIZ)[B

    move-result-object v0

    return-object v0
.end method
