.class public final Lcom/opensource/svgaplayer/SVGADrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SVGADrawable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGADrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGADrawable.kt\ncom/opensource/svgaplayer/SVGADrawable\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n1849#2,2:107\n1849#2,2:109\n1849#2,2:111\n1849#2,2:113\n*S KotlinDebug\n*F\n+ 1 SVGADrawable.kt\ncom/opensource/svgaplayer/SVGADrawable\n*L\n58#1:107,2\n70#1:109,2\n82#1:111,2\n94#1:113,2\n*E\n"
.end annotation


# instance fields
.field private cleared:Z

.field private currentFrame:I

.field private final drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scaleType:Landroid/widget/ImageView$ScaleType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    return-void
.end method

.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGADynamicEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGADrawable;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    .line 32
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 34
    new-instance v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    invoke-direct {v0, p1, p2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudioList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 95
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 96
    sget-object v3, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    invoke-virtual {v3, v2}, Lcom/opensource/svgaplayer/SVGASoundManager;->stop$com_opensource_svgaplayer(I)V

    goto :goto_1

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 102
    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setPlayID(Ljava/lang/Integer;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 37
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    iget v1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1, v1, p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method public final getCurrentFrame()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    return p0
.end method

.method public final getDynamicItem()Lcom/opensource/svgaplayer/SVGADynamicEntity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    return-object p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setCleared$com_opensource_svgaplayer(Z)V
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 19
    :cond_0
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final setCurrentFrame$com_opensource_svgaplayer(I)V
    .locals 1

    .line 25
    iget v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    if-ne v0, p1, :cond_0

    return-void

    .line 28
    :cond_0
    iput p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView$ScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public final stop()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudioList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 83
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 84
    sget-object v2, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {v2, v1}, Lcom/opensource/svgaplayer/SVGASoundManager;->stop$com_opensource_svgaplayer(I)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    :cond_2
    return-void
.end method
