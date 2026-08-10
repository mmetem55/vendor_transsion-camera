.class public final synthetic Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field public final synthetic f$2:Lcom/opensource/svgaplayer/SVGAVideoEntity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda6;->f$1:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda6;->f$2:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda6;->f$1:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda6;->f$2:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-static {v0, v1, p0}, Lcom/opensource/svgaplayer/SVGAParser;->$r8$lambda$RKGfJZQOSCpoFNxVr4HVuHzSsT0(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    return-void
.end method
