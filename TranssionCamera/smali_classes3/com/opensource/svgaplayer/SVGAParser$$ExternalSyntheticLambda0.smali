.class public final synthetic Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/opensource/svgaplayer/SVGAParser;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;->f$0:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;->f$2:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;->f$4:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;->f$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;->f$2:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda0;->f$4:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/opensource/svgaplayer/SVGAParser;->$r8$lambda$oEo-tiOiPx3JZZr11GnQJ8dQmt8(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    return-void
.end method
