.class public abstract Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;
.super Ljava/lang/Object;
.source "BaseMovieItem.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/template/item/IMovieItem;
.implements Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/IListItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$IPlayingStatusListener;
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final MILLISECOND_TO_SECOND:J = 0x3e8L

.field private static final RESOURCES_TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sPlaying:Z

.field private static sPlayingStatusListener:Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$IPlayingStatusListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverBitmap:Landroid/graphics/Bitmap;

.field private final mDescription:Ljava/lang/String;

.field private mItemClickListener:Lcom/transsion/camera/feature/mode/movie/ui/template/IItemClickListener;

.field private mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

.field private final mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

.field private final mSegmentDurations:[J

.field private mTextStartMargin:I

.field public final mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3D_ZxhNj4e0CC6dczubA_jjUrYs(Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->lambda$bindViewHolder$0(Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dRxPN5-inUQsZx33pcjqV7nCec0(Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->lambda$bindViewHolder$1(ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;)V
    .locals 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    .line 83
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mContext:Landroid/content/Context;

    .line 86
    new-instance p3, Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    invoke-direct {p3}, Lcom/transsion/camera/feature/mode/movie/MovieHelper;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    .line 88
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getSectionNum()I

    move-result p3

    new-array p3, p3, [J

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mSegmentDurations:[J

    .line 89
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->fillSegmentDurations(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V

    .line 91
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getNameId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mTitle:Ljava/lang/String;

    .line 93
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getDescriptionId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 94
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 92
    invoke-direct {p0, p3, v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->getDescription(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mDescription:Ljava/lang/String;

    .line 96
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getCoverPicturePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mCoverBitmap:Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/movie/R$dimen;->movie_template_item_title_start_margin:I

    .line 99
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mTextStartMargin:I

    return-void
.end method

.method public static createViewHolder(Landroid/view/ViewGroup;)Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;
    .locals 3

    .line 153
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/movie/R$layout;->template_item_layout:I

    const/4 v2, 0x0

    .line 154
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 155
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;-><init>(Landroid/view/View;)V

    .line 156
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object p0, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerProgress:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;)V

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->setProgressListener(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;)V

    .line 161
    iget-object p0, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;)V

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->addPlayerListener(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;)V

    return-object v0
.end method

.method private fillSegmentDurations(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V
    .locals 6

    .line 104
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getThemeSection()Ljava/util/List;

    move-result-object p1

    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 107
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

    .line 108
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mSegmentDurations:[J

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->getDuration()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 143
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 144
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 145
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_1

    .line 141
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 146
    sget-object v1, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBitmap resName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exception: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDescription(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "s"

    if-eqz v0, :cond_0

    .line 114
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDescription description is empty | mTitle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 120
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDescription format exception | mTitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", description: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "string"

    .line 131
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_0

    .line 134
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getString invalid resId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 137
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$bindViewHolder$0(Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;Landroid/view/View;)V
    .locals 1

    .line 232
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 233
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->updateState(Z)V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->stopPlay(Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 237
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->updateState(Z)V

    .line 238
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    .line 239
    iget-object p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/IMovieItem;->playMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$bindViewHolder$1(ILandroid/view/View;)V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mItemClickListener:Lcom/transsion/camera/feature/mode/movie/ui/template/IItemClickListener;

    if-eqz p0, :cond_0

    .line 245
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/IItemClickListener;->onItemClicked(I)V

    :cond_0
    return-void
.end method

.method public static setPlayingStatusListener(Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$IPlayingStatusListener;)V
    .locals 0

    .line 311
    sput-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->sPlayingStatusListener:Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$IPlayingStatusListener;

    return-void
.end method

.method public static updateState(Z)V
    .locals 3

    .line 303
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState playing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 304
    sget-boolean v0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->sPlaying:Z

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->sPlayingStatusListener:Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$IPlayingStatusListener;

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$IPlayingStatusListener;->onStatusChanged(Z)V

    .line 307
    :cond_0
    sput-boolean p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->sPlaying:Z

    return-void
.end method


# virtual methods
.method public activate(Landroid/view/View;I)V
    .locals 3

    .line 275
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activate position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;

    .line 277
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerController:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 278
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerContainerBg:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 280
    sget-boolean p2, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->sPlaying:Z

    if-eqz p2, :cond_0

    .line 281
    iget-object p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/IMovieItem;->playMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;)V

    :cond_0
    return-void
.end method

.method public bindViewHolder(Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;IZ)V
    .locals 4

    .line 209
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerCover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerCover:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerContainerBg:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    .line 215
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->getProgressListener()Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;

    move-result-object v0

    .line 216
    instance-of v2, v0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;

    if-eqz v2, :cond_0

    .line 217
    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;

    .line 218
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mSegmentDurations:[J

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->setSegmentDurations([J)V

    .line 219
    iget-object v2, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerProgress:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    .line 220
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/util/ProgressConvert;->getMaxProgress()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->setMaxProgress(I)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerProgress:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->setMaxProgress(I)V

    .line 224
    :goto_0
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerProgress:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->setProgress(I)V

    .line 226
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerContainer:Landroid/view/View;

    const v2, 0x3f6b851f    # 0.92f

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 228
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerController:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/camera/feature/movie/R$drawable;->ic_movie_play_start:I

    .line 229
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerController:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 231
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerController:Landroid/widget/ImageView;

    new-instance v2, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerContainer:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p3, :cond_1

    .line 251
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mTextStartMargin:I

    .line 254
    :cond_1
    iget-object p0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 255
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 256
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 257
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object p0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mDescription:Landroid/widget/TextView;

    .line 259
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 260
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 261
    iget-object p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public deactivate(Landroid/view/View;I)V
    .locals 2

    .line 295
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deactivate position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerController:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;->mPlayerContainerBg:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getCoverBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mCoverBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setItemClickListener(Lcom/transsion/camera/feature/mode/movie/ui/template/IItemClickListener;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mItemClickListener:Lcom/transsion/camera/feature/mode/movie/ui/template/IItemClickListener;

    return-void
.end method

.method public stopPlay(Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;)V
    .locals 0

    .line 270
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;->stopPlay()V

    return-void
.end method
