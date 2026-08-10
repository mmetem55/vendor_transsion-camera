.class public final Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;
.super Ljava/lang/Object;
.source "SGVADrawer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/drawer/SGVADrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SVGADrawerSprite"
.end annotation


# instance fields
.field private _frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _imageKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _matteKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/opensource/svgaplayer/drawer/SGVADrawer;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V
    .locals 0
    .param p1    # Lcom/opensource/svgaplayer/drawer/SGVADrawer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
            ")V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->this$0:Lcom/opensource/svgaplayer/drawer/SGVADrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_matteKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_imageKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 21
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;-><init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V

    return-void
.end method


# virtual methods
.method public final getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getImageKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_imageKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getMatteKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 22
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_matteKey:Ljava/lang/String;

    return-object p0
.end method

.method public final set_frameEntity(Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V
    .locals 0
    .param p1    # Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 21
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    return-void
.end method

.method public final set_imageKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 21
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_imageKey:Ljava/lang/String;

    return-void
.end method

.method public final set_matteKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 21
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->_matteKey:Ljava/lang/String;

    return-void
.end method
