.class final Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SVGAParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAParser;->decodeFromURL(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/io/InputStream;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cacheKey:Ljava/lang/String;

.field final synthetic $callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field final synthetic $playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

.field final synthetic $urlPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAParser;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    iput-object p5, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$urlPath:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 189
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->invoke(Ljava/io/InputStream;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/io/InputStream;)V
    .locals 8
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    .line 192
    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$cacheKey:Ljava/lang/String;

    .line 193
    iget-object v4, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    .line 195
    iget-object v6, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$playCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    .line 196
    iget-object v7, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$urlPath:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    .line 190
    invoke-virtual/range {v1 .. v7}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V

    return-void
.end method
