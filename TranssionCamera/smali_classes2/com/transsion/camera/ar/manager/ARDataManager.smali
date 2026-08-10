.class public Lcom/transsion/camera/ar/manager/ARDataManager;
.super Ljava/lang/Object;
.source "ARDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ar/manager/ARDataManager$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$0Kd-Oa6NnTbCygPdpeYhfr0lIe8(Lcom/faceunity/pta_art/entity/AvatarPTA;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/ar/manager/ARDataManager;->lambda$getAllRealAvatars$0(Lcom/faceunity/pta_art/entity/AvatarPTA;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6H1aCtvkYf2InialqEeJBDFAdmg(Lcom/faceunity/pta_art/entity/AvatarPTA;)Lcom/faceunity/pta_art/entity/AvatarPTA;
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/ar/manager/ARDataManager;->lambda$getAllRealAvatars$2(Lcom/faceunity/pta_art/entity/AvatarPTA;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WEPiSZEzPfp-QT4RXViiJyt4frw(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/ar/manager/ARDataManager;->lambda$getAllBundles$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YGkFsh93mbuvTkv-XQ9NjIE2RHE(Lcom/faceunity/pta_art/entity/AvatarPTA;)Lcom/faceunity/pta_art/entity/AvatarPTA;
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/ar/manager/ARDataManager;->lambda$getAllRealAvatars$1(Lcom/faceunity/pta_art/entity/AvatarPTA;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ARDataManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ar/manager/ARDataManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object p0, Lcom/transsion/camera/ar/manager/ARManager$Holder;->instance:Lcom/transsion/camera/ar/manager/ARManager;

    invoke-virtual {p0}, Lcom/transsion/camera/ar/manager/ARManager;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ar/manager/ARDataManager$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/ar/manager/ARDataManager;-><init>()V

    return-void
.end method

.method private getAllBundles(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance p0, Lcom/transsion/camera/ar/utils/AssetManagerHelper;

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ar/utils/AssetManagerHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/camera/ar/utils/AssetManagerHelper;->listAllAssets()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    sget-object v0, Lcom/transsion/camera/ar/manager/ARDataManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getAllBundles: failed"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p0, "new/facepup.json"

    .line 134
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "new/shape_list.json"

    .line 135
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "new/skin_color.json"

    .line 136
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private getAllRealAvatars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object p0, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager$HOLDER;->instance:Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;

    invoke-virtual {p0}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->init()V

    .line 102
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/faceunity/pta_art/entity/DBHelper;->getInstance(Landroid/content/Context;)Lcom/faceunity/pta_art/entity/DBHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/DBHelper;->getDefaultAllAvatarP2As()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda1;-><init>()V

    .line 103
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda2;-><init>()V

    .line 104
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda3;-><init>()V

    .line 105
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda4;-><init>()V

    .line 106
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda5;-><init>()V

    .line 114
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 122
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$getAllBundles$3(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".bundle"

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAllRealAvatars$0(Lcom/faceunity/pta_art/entity/AvatarPTA;)Z
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getAllRealAvatars$1(Lcom/faceunity/pta_art/entity/AvatarPTA;)Lcom/faceunity/pta_art/entity/AvatarPTA;
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSmallThumbNailRes()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSmallThumbNailRes()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSmallThumbNailRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 111
    :cond_1
    invoke-static {v0}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->getSmallThumbnailFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setSmallThumbNail(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$getAllRealAvatars$2(Lcom/faceunity/pta_art/entity/AvatarPTA;)Lcom/faceunity/pta_art/entity/AvatarPTA;
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBigThumbNailRes()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBigThumbNailRes()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBigThumbNailRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 119
    :cond_1
    invoke-static {v0}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->getBigThumbnailFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setBigThumbNail(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public deleteAvatarById(Ljava/lang/String;)I
    .locals 0

    .line 151
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/faceunity/pta_art/entity/DBHelper;->getInstance(Landroid/content/Context;)Lcom/faceunity/pta_art/entity/DBHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/entity/DBHelper;->deleteAvatarById(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAllBundlesCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 3

    .line 142
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "bundle_path"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/transsion/camera/ar/manager/ARDataManager;->getAllBundles(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public queryAllRealAvatar()Landroid/database/Cursor;
    .locals 27

    .line 37
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "id_compat"

    const-string v2, "body"

    const-string v3, "dir"

    const-string v4, "img_big_thumbnal"

    const-string v5, "img_small_thumbnal"

    const-string v6, "head"

    const-string v7, "hair_index"

    const-string v8, "hair_type"

    const-string v9, "glasses_index"

    const-string v10, "clothes_index"

    const-string v11, "beard_index"

    const-string v12, "eyelash_index"

    const-string v13, "eyebrow_index"

    const-string v14, "eyepupil_index"

    const-string v15, "facemake_index"

    const-string v16, "hat_index"

    const-string v17, "shoe_index"

    const-string v18, "skin_color_values"

    const-string v19, "lip_color_values"

    const-string v20, "iris_color_values"

    const-string v21, "hair_color_values"

    const-string v22, "glasses_color_values"

    const-string v23, "glasses_frame_color_values"

    const-string v24, "beard_color_values"

    const-string v25, "hat_color_values"

    const-string v26, "gender"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/ar/manager/ARDataManager;->getAllRealAvatars()Ljava/util/List;

    move-result-object v1

    .line 65
    sget-object v2, Lcom/transsion/camera/ar/manager/ARDataManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAllRealAvatar(): list = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/faceunity/pta_art/entity/AvatarPTA;

    .line 67
    sget-object v3, Lcom/transsion/camera/ar/manager/ARDataManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryAllRealAvatar(): item = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIdCompat()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "id_compat"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 69
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBodyFile()Ljava/lang/String;

    move-result-object v4

    const-string v5, "body"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 70
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBundleDir()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dir"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 71
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBigThumbNail()Ljava/lang/String;

    move-result-object v4

    const-string v5, "img_big_thumbnal"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 72
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSmallThumbNail()Ljava/lang/String;

    move-result-object v4

    const-string v5, "img_small_thumbnal"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 73
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHeadFile()Ljava/lang/String;

    move-result-object v4

    const-string v5, "head"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 74
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "hair_index"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 75
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "hair_type"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 76
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "glasses_index"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 77
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getClothesIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "clothes_index"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 78
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBeardIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "beard_index"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 79
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getEyelashIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "eyelash_index"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 80
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getEyebrowIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "eyebrow_index"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 81
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getPupilIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "eyepupil_index"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 82
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getFacemakeIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "facemake_index"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 83
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHatIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "hat_index"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 84
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getShoeIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "shoe_index"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 85
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSkinColorValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "skin_color_values"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 86
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getLipColorValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "lip_color_values"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 87
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIrisColorValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "iris_color_values"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 88
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairColorValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "hair_color_values"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 89
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesColorValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "glasses_color_values"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 90
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesFrameColorValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "glasses_frame_color_values"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 91
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBeardColorValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "beard_color_values"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 92
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHatColorValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "hat_color_values"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 93
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "gender"

    invoke-virtual {v3, v4, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_0

    .line 95
    :cond_0
    sget-object v1, Lcom/transsion/camera/ar/manager/ARDataManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "queryAllRealAvatar()"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method
