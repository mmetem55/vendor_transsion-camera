.class public final synthetic Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

.field public final synthetic f$1:Ljava/net/URL;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;Ljava/net/URL;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;->f$0:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;->f$1:Ljava/net/URL;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;->f$0:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;->f$1:Ljava/net/URL;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;->$r8$lambda$2ofIh8xzK3EHGYFNRMkuSWEPAFo(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;Ljava/net/URL;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
