.class public Lcom/transsion/camera/utils/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static lastClickTime:J

.field private static sPhysicalLastClickTime:[J

.field private static sQuitVIPSelfie:Z

.field private static final sSizeDesComparator:Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 60
    sput-object v0, Lcom/transsion/camera/utils/CameraUtil;->sPhysicalLastClickTime:[J

    const-wide/16 v0, 0x0

    .line 61
    sput-wide v0, Lcom/transsion/camera/utils/CameraUtil;->lastClickTime:J

    .line 934
    new-instance v0, Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;-><init>(Lcom/transsion/camera/utils/CameraUtil$1;)V

    sput-object v0, Lcom/transsion/camera/utils/CameraUtil;->sSizeDesComparator:Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;

    const/4 v0, 0x0

    .line 1165
    sput-boolean v0, Lcom/transsion/camera/utils/CameraUtil;->sQuitVIPSelfie:Z

    return-void
.end method

.method public static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 333
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 335
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static compareQuality(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "_"

    .line 920
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 921
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 922
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 923
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_1

    const/4 p0, -0x1

    if-eq v1, p0, :cond_0

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    if-le p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    return v0
.end method

.method private static findBestMatchPanelSize(Ljava/util/List;DIIDZ)Landroid/util/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;DIIDZ)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v1, v0

    move-object v0, p3

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 102
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    sub-double/2addr v4, p1

    .line 104
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, p5

    if-gtz v4, :cond_0

    .line 106
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v4, p4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpg-double v6, v4, v1

    if-gtz v6, :cond_1

    move-object p3, v3

    move-wide v1, v4

    .line 111
    :cond_1
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-lt v4, p4, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_2
    if-eqz p7, :cond_3

    move-object p3, v0

    :cond_3
    return-object p3
.end method

.method public static findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D",
            "Landroid/util/Size;",
            "DZIZ)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 121
    invoke-static/range {v0 .. v9}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZZ)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZZ)Landroid/util/Size;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D",
            "Landroid/util/Size;",
            "DZIZZ)",
            "Landroid/util/Size;"
        }
    .end annotation

    move-wide/from16 v8, p1

    move/from16 v0, p7

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-double v1, v10

    mul-double/2addr v1, v8

    double-to-int v3, v1

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz p6, :cond_c

    .line 139
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v11, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Size;

    .line 140
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v14

    int-to-double v14, v14

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v4

    move-object/from16 p6, v5

    int-to-double v4, v4

    div-double/2addr v14, v4

    sub-double/2addr v14, v8

    .line 142
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, p4

    if-gtz v4, :cond_4

    .line 144
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpg-double v14, v4, v11

    if-gtz v14, :cond_1

    move-wide v11, v4

    move-object v5, v13

    goto :goto_1

    :cond_1
    move-object/from16 v5, p6

    .line 149
    :goto_1
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-lt v4, v10, :cond_2

    move-object v6, v13

    :cond_2
    if-eqz p8, :cond_3

    .line 153
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v4

    rem-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_3

    .line 154
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-lez v0, :cond_0

    .line 157
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-gt v4, v0, :cond_0

    .line 158
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object/from16 v5, p6

    goto :goto_0

    :cond_5
    move-object/from16 p6, v5

    if-eqz p8, :cond_7

    if-lez v0, :cond_7

    .line 164
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 165
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_2

    :cond_7
    if-eqz p8, :cond_8

    :goto_2
    move-object v0, v1

    goto :goto_3

    :cond_8
    if-lez v0, :cond_9

    move-object v0, v2

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_b

    if-eqz p9, :cond_a

    move-object v4, v6

    goto :goto_4

    :cond_a
    move-object/from16 v4, p6

    goto :goto_4

    :cond_b
    move-wide/from16 v1, p1

    move v4, v10

    move-wide/from16 v5, p4

    move/from16 v7, p9

    .line 179
    invoke-static/range {v0 .. v7}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchPanelSize(Ljava/util/List;DIIDZ)Landroid/util/Size;

    move-result-object v4

    :goto_4
    move-wide v5, v11

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_f

    .line 184
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getPreviewSize] no preview size match the aspect ratio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", then use standard 4:3 for preview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "1.3333"

    .line 186
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 187
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 188
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-double v11, v9

    div-double/2addr v7, v11

    sub-double/2addr v7, v0

    .line 189
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v7, v7, p4

    if-lez v7, :cond_e

    goto :goto_6

    .line 192
    :cond_e
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    sub-int/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_d

    .line 194
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    move-wide v5, v4

    move-object v4, v3

    goto :goto_6

    :cond_f
    return-object v4
.end method

.method private static findMaxFace([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Lcom/transsion/camera/utils/SettingInfo$CameraFace;
    .locals 7

    const/4 v0, 0x0

    .line 1021
    aget-object v1, p0, v0

    .line 1022
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 1023
    invoke-virtual {v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    .line 1024
    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static generateSupportedList(ILjava/util/ArrayList;Ljava/util/List;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;[I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 987
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 988
    aget v1, p3, v0

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    aget v1, p3, v0

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 990
    new-instance v2, Landroid/util/Size;

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    .line 992
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    :cond_1
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "generateSupportedList add "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "8.0"

    .line 1044
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 1046
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1047
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public static getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 819
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bool"

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 820
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 822
    :catch_0
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBooleanResource NotFoundException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getCameraRelativePath()Ljava/lang/String;
    .locals 2

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChoseGallery(Landroid/content/pm/PackageManager;Z)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 764
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isGooglePhotosEnabled(Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 766
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isGooglePhotosGoEnabled(Landroid/content/pm/PackageManager;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method

.method public static getDimen(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 868
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDimen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 859
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "dimen"

    .line 860
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 862
    :catch_0
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDimen NotFoundException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 883
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    .line 884
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 886
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static getExternalStoragePublicDirectory()Ljava/lang/String;
    .locals 2

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfoFormUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 967
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    .line 968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2

    .line 970
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "query success, _data: "

    .line 972
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_data"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mime_type: "

    .line 973
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mime_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", date_added: "

    .line 974
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "date_added"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", date_modified: "

    .line 975
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "date_modified"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", datetaken: "

    .line 976
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "datetaken"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", _size: "

    .line 977
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_size"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 980
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 982
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInteger(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 849
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "integer"

    .line 850
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 849
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 852
    :catch_0
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInteger NotFoundException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getMinSizeForSupport(Landroid/util/Size;Ljava/util/List;)Landroid/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    float-to-double v3, v1

    .line 207
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    .line 208
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 209
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    sub-double v5, v3, v5

    .line 210
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getNV21Buffer(Landroid/media/Image;)[B
    .locals 2

    .line 672
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 673
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->parseSemiPlanar(Landroid/media/Image;)[B

    move-result-object p0

    goto :goto_0

    .line 676
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->parsePlanar(Landroid/media/Image;)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getP3VideoPreviewSwitch(Landroid/content/Context;)I
    .locals 1

    .line 1159
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string p0, "debug.vendor.camera.videopreview.srgb2p3"

    .line 1162
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPhysicalLastClickTime()[J
    .locals 1

    .line 91
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->sPhysicalLastClickTime:[J

    return-object v0
.end method

.method public static getRotation(IIZ)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p2, :cond_0

    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    .line 281
    rem-int/lit16 p1, p1, 0x168

    return p1

    :cond_0
    add-int/2addr p1, p0

    .line 283
    rem-int/lit16 p1, p1, 0x168

    :cond_1
    return p1
.end method

.method public static getScreenPocketSystemOrientation()I
    .locals 5

    const-string v0, "persist.sys.pocket_display.last_rotation"

    const/4 v1, -0x1

    .line 1125
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1127
    sget-object v2, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenPocketSystemOrientation systemRotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 839
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    .line 840
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 839
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 842
    :catch_0
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getString NotFoundException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 829
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "array"

    .line 830
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 829
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 832
    :catch_0
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringArray NotFoundException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTopMargin(DDIIII)I
    .locals 2

    .line 256
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    move p5, p3

    goto :goto_1

    :cond_1
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 258
    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 260
    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 262
    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_4

    sub-int/2addr p4, p6

    sub-int/2addr p4, p5

    sub-int/2addr p4, p7

    .line 263
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p5, p4

    goto :goto_1

    :cond_4
    const-wide p6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 264
    invoke-static {p0, p1, p6, p7}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const-wide/high16 p6, 0x4000000000000000L    # 2.0

    .line 266
    invoke-static {p0, p1, p6, p7}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    const-wide p6, 0x4000aaaaaaaaaaabL    # 2.0833333333333335

    .line 268
    invoke-static {p0, p1, p6, p7}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    :cond_7
    const-wide p6, 0x4000e38e38e38e39L    # 2.111111111111111

    .line 270
    invoke-static {p0, p1, p6, p7}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    const-wide p6, 0x3ff25d4c3b2a1908L    # 1.1477777777777778

    .line 272
    invoke-static {p0, p1, p6, p7}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p0

    if-eqz p0, :cond_0

    :goto_1
    return p5
.end method

.method public static getTopMargin(DIIII)I
    .locals 4

    .line 231
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move p3, v1

    goto :goto_1

    :cond_1
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 233
    invoke-static {p0, p1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    .line 235
    invoke-static {p0, p1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 237
    invoke-static {p0, p1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_4

    sub-int/2addr p2, p4

    sub-int/2addr p2, p3

    sub-int/2addr p2, p5

    .line 238
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    goto :goto_1

    :cond_4
    const-wide p4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 239
    invoke-static {p0, p1, p4, p5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    .line 241
    invoke-static {p0, p1, p4, p5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    const-wide p4, 0x4000aaaaaaaaaaabL    # 2.0833333333333335

    .line 243
    invoke-static {p0, p1, p4, p5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    :cond_7
    const-wide p4, 0x4000e38e38e38e39L    # 2.111111111111111

    .line 245
    invoke-static {p0, p1, p4, p5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    const-wide p4, 0x3ff25d4c3b2a1908L    # 1.1477777777777778

    .line 247
    invoke-static {p0, p1, p4, p5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p0

    if-eqz p0, :cond_0

    :goto_1
    return p3
.end method

.method public static gotoAppDetails(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    .line 632
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packagename"

    .line 633
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const p1, 0x10008000

    .line 635
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x0

    const-string v1, "package"

    .line 638
    invoke-static {v1, p2, p1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 639
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 640
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static gotoAppPermissionDetails(Landroid/app/Fragment;ZLjava/lang/String;)V
    .locals 2

    .line 605
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.setting.ACTION_GET_PERMISSION_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packagename"

    .line 606
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const p1, 0x10008000

    .line 608
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 611
    :cond_0
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 612
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string v1, "package"

    .line 613
    invoke-static {v1, p2, p1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 614
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 615
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public static gotoAppPermissionDetails(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    .line 620
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.setting.ACTION_GET_PERMISSION_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packagename"

    .line 621
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const v1, 0x10008000

    .line 623
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 626
    :cond_0
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->gotoAppDetails(Landroid/content/Context;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static gotoGallery(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 6

    const-string v0, "anim"

    .line 1070
    sget-object v1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[gotoGallery] view uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1072
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1073
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "use_google_photos_default"

    const-string v5, "bool"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1074
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1075
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1076
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.REVIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result v2

    .line 1078
    invoke-virtual {v4, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isCamera"

    const/4 v1, 0x1

    .line 1079
    invoke-virtual {v4, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1081
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v5, "screen_brightness"

    invoke-static {p1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    add-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p1, v5

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr p1, v5

    const-string v5, "brightness"

    .line 1085
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1087
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x2

    const v5, 0x8000

    if-ne v2, v1, :cond_1

    .line 1090
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.google.android.apps.photos"

    .line 1091
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    if-ne v2, p1, :cond_2

    .line 1093
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.google.android.apps.photosgo"

    .line 1094
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1096
    :cond_2
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.gallery20"

    .line 1097
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x10000000

    .line 1100
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_3
    const/4 v1, 0x0

    .line 1102
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1103
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 1104
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-ne v2, p1, :cond_5

    .line 1109
    :try_start_1
    invoke-static {p0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_2

    .line 1111
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "anim_gallery_in"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1112
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "anim_camera_out"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1113
    invoke-static {p0, p1, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 1115
    :goto_2
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 1119
    sget-object p1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[gotoGallery] SecurityException "

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception p0

    .line 1117
    sget-object p1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[gotoGallery] Couldn\'t view "

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static isAiGallerySupportSharedAnimation(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    .line 1147
    :try_start_0
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSharedAnimationSupport()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "support_shared_animation_to_gallery"

    .line 1148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1147
    invoke-static {p0, v1, v3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1149
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v3, "com.gallery20"

    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    .line 1150
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAiGallerySupportSharedAnimation,version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const-wide/32 v5, 0xcf6d

    cmp-long p0, v3, v5

    if-ltz p0, :cond_1

    move v0, v2

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 1153
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static isFastDoubleClick(J)Z
    .locals 6

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    sget-wide v2, Lcom/transsion/camera/utils/CameraUtil;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    cmp-long p0, v2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 70
    :cond_0
    sput-wide v0, Lcom/transsion/camera/utils/CameraUtil;->lastClickTime:J

    const/4 p0, 0x0

    return p0
.end method

.method public static isFastDoubleClick(J[J)Z
    .locals 7

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 76
    aget-wide v3, p2, v2

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v5, v3

    if-gez v5, :cond_0

    cmp-long p0, v3, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 82
    :cond_0
    aput-wide v0, p2, v2

    return v2
.end method

.method private static isGooglePhotosEnabled(Landroid/content/pm/PackageManager;)Z
    .locals 3

    const-string v0, "com.google.android.apps.photos"

    const/4 v1, 0x0

    .line 776
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 780
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    return v1

    .line 784
    :catch_0
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isGooglePhotosEnabled NameNotFoundException: com.google.android.apps.photos"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static isGooglePhotosGoEnabled(Landroid/content/pm/PackageManager;)Z
    .locals 3

    const-string v0, "com.google.android.apps.photosgo"

    const/4 v1, 0x0

    .line 792
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 796
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    return v1

    .line 800
    :catch_0
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isGooglePhotosGoEnabled NameNotFoundException: com.google.android.apps.photosgo"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public static isNeedShowFace([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/util/Size;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1002
    array-length v1, p0

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    .line 1004
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->findMaxFace([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    move-result-object p0

    .line 1006
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 1005
    invoke-static {p0, v1, v2}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p0

    .line 1007
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    mul-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr v1, p1

    const p1, 0x3d4ccccd    # 0.05f

    cmpl-float p1, v1, p1

    if-gtz p1, :cond_1

    .line 1009
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1010
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isPackageNameExist(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 808
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 812
    :catch_0
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageNameExist NameNotFoundException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static isRadioAndSizeEqual(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 594
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 595
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 596
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide v3, 0x3f947ae147ae147bL    # 0.02

    goto :goto_0

    :cond_1
    const-wide v3, 0x3f8cac083126e979L    # 0.014

    :goto_0
    cmpg-double v1, v1, v3

    const/4 v2, 0x1

    if-gez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 598
    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    move v0, v2

    :cond_3
    :goto_2
    return v0
.end method

.method public static isSameAspectRatio(DD)Z
    .locals 0

    sub-double/2addr p0, p2

    .line 225
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSameAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6

    .line 218
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double v4, p0

    div-double/2addr v0, v4

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-double v4, p0

    mul-double/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double p0, p0

    div-double/2addr v4, p0

    sub-double/2addr v0, v4

    .line 220
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isThunderbackWindow(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1056
    :try_start_0
    const-class v1, Landroid/content/res/Configuration;

    const-string v2, "isThunderbackWindow"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1057
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1058
    sget-object p0, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inMultiWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1060
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static isUriValid(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 955
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 958
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 959
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "./"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 960
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

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

.method public static isVIPSelfieMode(Landroid/content/Context;)Z
    .locals 4

    .line 1172
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    return v1

    .line 1176
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->isDualDisplayForSelfie(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1177
    sput-boolean v1, Lcom/transsion/camera/utils/CameraUtil;->sQuitVIPSelfie:Z

    .line 1180
    :cond_1
    sget-boolean v0, Lcom/transsion/camera/utils/CameraUtil;->sQuitVIPSelfie:Z

    if-eqz v0, :cond_2

    xor-int/lit8 p0, v0, 0x1

    return p0

    .line 1183
    :cond_2
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->isDualDisplayForSelfie(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static lerp(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method private static parsePlanar(Landroid/media/Image;)[B
    .locals 9

    .line 682
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 683
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 684
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v4, 0x2

    aget-object p0, p0, v4

    .line 686
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 688
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 689
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 690
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 691
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int v7, v4, v5

    add-int/2addr v7, v6

    .line 693
    new-array v7, v7, [B

    .line 694
    invoke-virtual {v0, v7, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-ge v5, v6, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    if-ge v1, v0, :cond_1

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v4

    .line 697
    invoke-virtual {p0, v7, v8, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v8, v3

    .line 698
    invoke-virtual {v2, v7, v8, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-le v6, v0, :cond_2

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v4

    sub-int/2addr v6, v0

    .line 701
    invoke-virtual {p0, v7, v1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_2
    if-le v5, v0, :cond_3

    mul-int/lit8 p0, v0, 0x2

    add-int/2addr v4, p0

    sub-int/2addr v5, v0

    .line 704
    invoke-virtual {v2, v7, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_3
    return-object v7
.end method

.method private static parseSemiPlanar(Landroid/media/Image;)[B
    .locals 11

    .line 710
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 711
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 713
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 714
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 715
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 717
    invoke-virtual {p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 718
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 719
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 720
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    mul-int v9, v7, v8

    .line 721
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v10

    invoke-static {v10}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v10

    mul-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x8

    new-array v9, v9, [B

    if-ne v7, v0, :cond_0

    .line 726
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    if-ne v8, p0, :cond_0

    .line 727
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    .line 728
    invoke-virtual {v3, v9, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 729
    invoke-virtual {v5, v9, v4, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 730
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 731
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_2

    .line 733
    :cond_0
    iget p0, v6, Landroid/graphics/Rect;->top:I

    mul-int/2addr p0, v0

    iget v4, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v4

    move v4, v1

    move v10, v4

    :goto_0
    if-ge v4, v8, :cond_1

    .line 736
    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 737
    invoke-virtual {v3, v9, v10, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v10, v7

    add-int/2addr p0, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 743
    :cond_1
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p0

    .line 744
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    .line 745
    iget v2, v6, Landroid/graphics/Rect;->top:I

    shr-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v0

    iget v3, v6, Landroid/graphics/Rect;->left:I

    shr-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, p0

    add-int/2addr v2, v3

    shr-int/lit8 p0, v8, 0x1

    :goto_1
    add-int/lit8 v3, p0, -0x1

    if-ge v1, v3, :cond_2

    .line 748
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 749
    invoke-virtual {v5, v9, v10, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v10, v7

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 753
    :cond_2
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v7, v7, -0x1

    .line 754
    invoke-virtual {v5, v9, v10, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_2
    return-object v9
.end method

.method public static parseVideoFps(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 902
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 904
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    .line 905
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 907
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 893
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 895
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 896
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 898
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static randomValueIn(II)I
    .locals 1

    .line 931
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 2

    .line 316
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 317
    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 318
    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 319
    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 320
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public static rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 4

    .line 312
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static rectToString(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 3

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rgb2NV21NoAlpha([III)[B
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v0, v1

    mul-int/lit8 v3, v2, 0x3

    .line 558
    div-int/lit8 v3, v3, 0x2

    .line 559
    new-array v4, v3, [B

    .line 560
    sget-object v5, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " lenAlpha="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_8

    move v7, v5

    :goto_1
    if-ge v7, v0, :cond_7

    mul-int v8, v6, v0

    add-int/2addr v8, v7

    .line 565
    aget v9, p0, v8

    and-int/lit16 v10, v9, 0xff

    shr-int/lit8 v11, v9, 0x8

    const/16 v12, 0xff

    and-int/2addr v11, v12

    shr-int/lit8 v9, v9, 0x10

    and-int/2addr v9, v12

    mul-int/lit8 v13, v9, 0x42

    mul-int/lit16 v14, v11, 0x81

    add-int/2addr v13, v14

    mul-int/lit8 v14, v10, 0x19

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, 0x10

    mul-int/lit8 v14, v9, -0x26

    mul-int/lit8 v15, v11, 0x4a

    sub-int/2addr v14, v15

    mul-int/lit8 v15, v10, 0x70

    add-int/2addr v14, v15

    add-int/lit16 v14, v14, 0x80

    shr-int/lit8 v14, v14, 0x8

    add-int/lit16 v14, v14, 0x80

    mul-int/lit8 v9, v9, 0x70

    mul-int/lit8 v11, v11, 0x5e

    sub-int/2addr v9, v11

    mul-int/lit8 v10, v10, 0x12

    sub-int/2addr v9, v10

    add-int/lit16 v9, v9, 0x80

    shr-int/lit8 v9, v9, 0x8

    add-int/lit16 v9, v9, 0x80

    if-gez v13, :cond_0

    move v13, v5

    goto :goto_2

    :cond_0
    if-le v13, v12, :cond_1

    move v13, v12

    :cond_1
    :goto_2
    if-gez v14, :cond_2

    move v14, v5

    goto :goto_3

    :cond_2
    if-le v14, v12, :cond_3

    move v14, v12

    :cond_3
    :goto_3
    if-gez v9, :cond_4

    move v12, v5

    goto :goto_4

    :cond_4
    if-le v9, v12, :cond_5

    goto :goto_4

    :cond_5
    move v12, v9

    :goto_4
    int-to-byte v9, v13

    .line 578
    aput-byte v9, v4, v8

    .line 580
    rem-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_6

    rem-int/lit8 v8, v7, 0x2

    if-nez v8, :cond_6

    div-int/lit8 v8, v6, 0x2

    mul-int/2addr v8, v0

    add-int/2addr v8, v2

    add-int/2addr v8, v7

    add-int/lit8 v9, v8, 0x1

    if-ge v9, v3, :cond_6

    int-to-byte v10, v12

    .line 581
    aput-byte v10, v4, v8

    int-to-byte v8, v14

    .line 582
    aput-byte v8, v4, v9

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    return-object v4
.end method

.method public static sortSizeInDescending(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 951
    sget-object v0, Lcom/transsion/camera/utils/CameraUtil;->sSizeDesComparator:Lcom/transsion/camera/utils/CameraUtil$SizeDesComparator;

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z
    .locals 1

    .line 645
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 647
    sget-object p1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startActivity Exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 655
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 657
    sget-object p1, Lcom/transsion/camera/utils/CameraUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startActivity Exception: "

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static updateLastClickTime()V
    .locals 2

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/utils/CameraUtil;->lastClickTime:J

    return-void
.end method
