.class public final Lcom/opensource/svgaplayer/SVGAParser$Companion;
.super Ljava/lang/Object;
.source "SVGAParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/SVGAParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAParser$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getThreadPoolExecutor$com_opensource_svgaplayer()Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 113
    invoke-static {}, Lcom/opensource/svgaplayer/SVGAParser;->access$getThreadPoolExecutor$cp()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
